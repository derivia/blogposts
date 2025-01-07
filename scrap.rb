require 'selenium-webdriver'
require 'uri'
require 'fileutils'
require 'nokogiri'
require 'reverse_markdown'
require 'open-uri'
require 'digest'

print "URL: "
url = gets.chomp

archive_pattern = /https:\/\/web\.archive\.org\/web\/\d{14}\/(http[s]?:\/\/[^\s]+)/
is_archive = url.match(archive_pattern)

if is_archive
  original_url = is_archive[1]
elsif url =~ /^(http[s]?:\/\/[^\s]+)/
  original_url = url
else
  puts "Invalid URL format."
  exit
end

uri = URI.parse(original_url)
domain = uri.host
post_name = uri.path.split('/').last
post_name = "index" if post_name.empty? || post_name == "/"

base_folder = "./posts/#{domain}"
resources_folder = "#{base_folder}/resources"
FileUtils.mkdir_p(resources_folder)

options = Selenium::WebDriver::Firefox::Options.new
options.add_argument('--headless')
driver = Selenium::WebDriver.for :firefox, options: options

begin
  driver.get(url)

  # wait for dynamic content to load
  wait = Selenium::WebDriver::Wait.new(timeout: 30)
  wait.until do
    ready = driver.execute_script('return document.readyState') == 'complete'
    jquery_ready = driver.execute_script('return typeof jQuery === "undefined" || jQuery.active === 0')
    ajax_ready = driver.execute_script('return typeof Ajax === "undefined" || Ajax.activeRequestCount === 0')
    ready && jquery_ready && ajax_ready
  end

  # additional wait for dynamic elements
  sleep 2

  html_content = driver.page_source
  doc = Nokogiri::HTML(html_content)

  # process images before converting to markdown
  doc.css('img').each_with_index do |img, index|
    src = img['src']
    next if src.nil? || src.empty?

    begin
      # handle relative URLs
      if src.start_with?('//')
        src = "https:#{src}"
      elsif src.start_with?('/')
        if is_archive
          src = "https://web.archive.org#{src}"
        else
          src = "#{uri.scheme}://#{uri.host}#{src}"
        end
      end

      # generate unique filename based on source URL
      ext = File.extname(src).split('?').first
      ext = '.jpg' if ext.empty?
      filename = "#{Digest::MD5.hexdigest(src)}#{ext}"
      local_path = File.join('resources', filename)

      URI.open(src) do |image|
        File.open(File.join(resources_folder, filename), 'wb') do |file|
          file.write(image.read)
        end
      end

      # add image source in HTML
      img['src'] = local_path
    rescue => e
      puts "Warning: Failed to download image #{src}: #{e.message}"
      img['src'] = "FAILED_TO_DOWNLOAD_#{src}"
    end
  end

  config = {
    unknown_tags: :bypass,
    github_flavored: true,
    tables: true
  }

  markdown = ReverseMarkdown.convert(doc.to_s, config)

  md_file_path = File.join(base_folder, "#{post_name}.md")
  File.write(md_file_path, markdown)

  puts "Content saved as '#{md_file_path}'."
  puts "Resources saved in '#{resources_folder}'."

rescue => e
  puts "Error: #{e.message}"
  puts e.backtrace
ensure
  driver.quit
end
