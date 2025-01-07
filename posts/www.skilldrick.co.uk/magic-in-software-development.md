[skilldrick.co.uk](/)

- [Audio/Music](/audio-music/ "Audio/Music page")
- [Writing](/writing/ "Writing page")
- [About](/about/ "About page")

[bsky](https://bsky.app/profile/skilldrick.co.uk "bsky link")

Magic in software development

POSTS

# Magic in software development
April 24, 2011

First off, so we’re on the same page, we need to be talking in the same terms. So, what _is_ magic? I’d define it as anything below your current level of abstraction that you don’t understand.

[![SICP cover](resources/69cd0ab0d69a5c71f6e74dbeb87e4cc3.jpg "sicp-cover")](http://skilldrick.co.uk/wp-content/uploads/2011/04/sicp-cover.jpg)

I first started thinking about this topic because of this angst I felt about all this magic I was relying on. There’s so many things that I rely on every day and I have no idea how they work. As far as I’m concerned, they’re magic. As long as I think about these things as magic, they seem unknowable. I think that’s where the angst comes from. What I need to remind myself is that everything I’ve learned about software seemed like magic before I understood it, and there’s nothing that’s unknowable, just things that aren’t known yet.

This post is my attempt to come to an understanding of what this ‘magic’ is, whether it’s a problem, and how best to deal with it.

### The ‘Dave’ technique

At University, I learned how to record music. We recorded onto tape, so we had to learn how a tape machine worked. To learn how a tape machine worked, we had understand hysteresis and remanence and modulation and various other things that I’ve mostly forgotten now. We also had to understand how radio worked, so we learned about amplitude and frequency modulation, and how stereo FM was built on top of mono FM with an AM difference signal on top so as to be backwards compatible, and various other technical issues. Then came digital audio with ADCs, DACs, sampling, quantisation, dithering, etc. Each of these three topics was one or two modules, i.e. a semester’s-worth of lectures, so we went pretty deep.

Did that knowledge make me a better recording engineer? Probably not. But it was a helpful basis for the latter things I learned, which _did_ help make me a better recording engineer.

### The ‘Tim’ technique

Another lecturer taught us computer audio. This started off with an introduction to computers, starting at the level of AND, OR and NOT gates, then on to NAND and NOR (and how the simpler to understand AND, OR and NOT gates can be implemented in terms of NAND and NOR), then on to the ALU, then the CPU, then adding memory and disk storage and network and MIDI connections, creating a full computer. This was all presented in two or three lectures, so inevitably certain steps had to be left out (e.g. “we put together a load of these gates and we get the ALU”).

The benefit of this approach was that we were given a vague conceptual understanding of the basis on which computer audio is built, without having to spend hours and hours learning the full intricacies.

### Bottom-up

If we’re intent on uncovering all the magic, how should we learn - bottom-up or top-down? Bottom-up, right from the bottom, implies first learning enough physics to understand electronics, which you’d need to understand digital circuit design, which you’d need to understand CPU design, which you need to understand assembly language, which you need to understand C, then enough C to understand Ruby (say). You’ll also need to understand how networks work right from the bottom of the TCP/IP stack and beyond; how storage works right from the level of hysteresis in magnetic particles on a hard disk; how RAM works from the level of individual capacitors; etc.

This reminds me of the famous Carl Sagan quote:

> If you want to make an apple pie from scratch, you must first create the universe.

### Top-down

Top-down is essentially the process followed by Structure and Interpretation of Computer Programs, at a micro and macro level. At the micro level, we are taught to solve problems using “wishful thinking”: first represent the problem using large custom building blocks, then build the pieces those blocks are made out of using language primitives. And at the macro level, the book teaches the workings of Scheme through a series of increasingly complex models.

### Bottom-up vs top-down

The problem with the bottom-up approach is it would take decades of studying before you were let near an interpreted language. This approach may have worked in the fifties when there wasn’t as much to learn. But these days you won’t get anything useful done.

The problem with the top-down approach is that the levels we work at these days are so large, you can’t just learn all of your current level and then start to look at the lower levels, because you’d never finish learning all the details of the current level.

### Leaky abstractions

Joel Spolsky has something to say on this matter in his piece[The Law of Leaky Abstractions](http://www.joelonsoftware.com/articles/LeakyAbstractions.html). This basically says that all abstractions are leaky, meaning that we cannot rely on them to shield us from the levels below our current level. So, to work at the current level we must learn the lower levels. It’s OK to work at the level of the abstraction, and it will save us time working at that level, but when it breaks down we still need to understand why. As Joel says:

> the abstractions save us time working, but they don’t save us time learning.

### Magic’s alright, yeah

Some of us don’t like the idea of magic. It feels like cheating. But it’s useful as a placeholder, something to learn about later; not now. It’s useful to delve down to lower levels, understanding how the abstractions we work with every day are implemented, but at some point the law of diminishing returns kicks in. (In some fields, we can’t even assume we’ll ever learn how the magic works. As [@sermoa said](https://twitter.com/#!/sermoa/status/62121903585890304), “we don’t understand exactly how quantum physics works but we accept that it does and make good use of it”.)

What we need to get to, eventually, is an understanding of the whole stack, but at greater and greater granularities as we get further away from our main level. So, if you’re a Ruby on Rails programmer, you need to know most of Ruby (but not all of it). It’s helpful to know a bit of C, and a bit of how the operating system responds to certain commands. Below that level, it’s good to have a vague understanding of how a computer works. And it’s useful to know that electrical signals can only transmit at a finite speed, and that there’s a physical limit to the number of transistors in a processor. As time goes on you can begin to flesh out these lower levels, remembring that the higher levels are generally going to be more beneficial to your day-to-day work.

Before you’ve delved deeper, those lower levels are magic. And that’s fine.

* * *

Thanks to [@marcgravell](https://twitter.com/marcgravell),[@ataraxia\_status](https://twitter.com/ataraxia_status),[@sermoa](https://twitter.com/sermoa),[@bytespider](https://twitter.com/bytespider),[@ghickman](https://twitter.com/ghickman),[@SamirTalwar](https://twitter.com/SamirTalwar) and[@josmasflores](https://twitter.com/josmasflores) for their input on this post.

Also, thanks to [Dave Fisher](http://www.surrey.ac.uk/msr/people/dave_fisher/) and [Tim Brookes](http://www.surrey.ac.uk/msr/people/tim_brookes/) for being the sources of the ‘Dave’ and ‘Tim’ techniques.

[© skilldrick.co.uk 2023](https://www.skilldrick.co.uk/)

[bsky](https://bsky.app/profile/skilldrick.co.uk "bsky link")

