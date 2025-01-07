 **Why don't schools teach debugging?** | [Patreon](https://patreon.com/danluu)
* * *
 

In the fall of 2000, I took my first engineering class: [ECE 352](http://courses.engr.wisc.edu/ece/ece352.html), an entry-level digital design class for first-year computer engineers. It was standing room only, filled with waitlisted students who would find seats later in the semester as people dropped out. We had been warned in orientation that half of us wouldn't survive the year. In class, We were warned again that half of us were doomed to fail, and that ECE 352 was the weed-out class that would be responsible for much of the damage.

 

The class moved briskly. The first lecture wasted little time on matters of the syllabus, quickly diving into the real course material. Subsequent lectures built on previous lectures; anyone who couldn't grasp one had no chance at the next. Projects began after two weeks, and also built upon their predecessors; anyone who didn't finish one had no hope of doing the next.

 

A friend of mine and I couldn't understand why some people were having so much trouble; the material seemed like common sense. The [Feynman Method](http://c2.com/cgi/wiki?FeynmanAlgorithm) was the only tool we needed.

 

> 1. Write down the problem
> 2. Think real hard
> 3. Write down the solution

 

The Feynman Method failed us on the last project: the design of a [divider](http://i.stanford.edu/pub/cstr/reports/csl/tr/95/675/CSL-TR-95-675.pdf), a real-world-scale project an order of magnitude more complex than anything we'd been asked to tackle before. On the day he assigned the project, the professor exhorted us to begin early. Over the next few weeks, we heard rumors that some of our classmates worked day and night without making progress.

 

But until 6pm the night before the project was due, my friend and I ignored all this evidence. It didn't surprise us that people were struggling because half the class had trouble with all of the assignments. We were in the half that breezed through everything. We thought we'd start the evening before the deadline and finish up in time for dinner.

 

We were wrong.

 

An hour after we thought we'd be done, we'd barely started; neither of us had a working design. Our failures were different enough that we couldn't productively compare notes. The lab, packed with people who had been laboring for weeks alongside those of us who waited until the last minute, was full of bad news: a handful of people had managed to produce a working division unit on the first try, but no one had figured how to convert an incorrect design into something that could do third-grade arithmetic.

 

I proceeded to apply the only tool I had: thinking really hard. That method, previously infallible, now yielded nothing but confusion because the project was too complex to visualize in its entirety. I tried thinking about the parts of the design separately, but that only revealed that the problem was in some interaction between the parts; I could see nothing wrong with each individual component. Thinking about the relationship between pieces was an exercise in frustration, a continual feeling that the solution was just out of reach, as concentrating on one part would push some other critical piece of knowledge out of my head. The following semester I would acquire enough experience in managing complexity and thinking about collections of components as black-box abstractions that I could reason about a design another order of magnitude more complicated without problems — but that was three long winter months of practice away, and this night I was at a loss for how to proceed.

 

By 10pm, I was starving and out of ideas. I rounded up people for dinner, hoping to get a break from thinking about the project, but all we could talk about was how hopeless it was. How were we supposed to finish when the only approach was to flawlessly assemble thousands of parts without a single misstep? It was a tedious version of a deranged Atari game with no lives and no continues. Any mistake was fatal.

 

A number of people resolved to restart from scratch; they decided to work in pairs to check each other's work. I was too stubborn to start over and too inexperienced to know what else to try. After getting back to the lab, now half empty because so many people had given up, I resumed staring at my design, as if thinking about it for a third hour would reveal some additional insight.

 

It didn't. Nor did the fourth hour.

 

And then, just after midnight, a number of our newfound buddies from dinner reported successes. Half of those who started from scratch had working designs. Others were despondent, because their design was still broken in some subtle, non-obvious way. As I talked with one of those students, I began poring over his design. And after a few minutes, I realized that the Feynman method wasn't the only way forward: it should be possible to systematically apply a mechanical technique repeatedly to find the source of our problems. Beneath all the abstractions, our projects consisted purely of NAND gates (woe to those who dug around our toolbox enough to uncover dynamic logic), which outputs a 0 only when both inputs are 1. If the correct output is 0, both inputs should be 1. If the output is, incorrectly, 1, then at least one of the inputs must incorrectly be 0. The same logic can then be applied with the opposite polarity. We did this recursively, finding the source of all the problems in both our designs in under half an hour.

 

We excitedly explained our newly discovered technique to those around us, walking them through a couple steps. No one had trouble; not even people who'd struggled with every previous assignment. Within an hour, the group of folks within earshot of us had finished, and we went home.

 

I understand now why half the class struggled with the earlier assignments. Without an explanation of how to systematically approach problems, anyone who didn't intuitively grasp the correct solution was in for a semester of frustration. People who were, like me, above average but not great, skated through most of the class and either got lucky or wasted a huge chunk of time on the final project. I've even seen people talented enough to breeze through the entire degree without ever running into a problem too big to intuitively understand; those people have a very bad time when they run into a 10 million line codebase in the real world. [The more talented the engineer, the more likely they are to hit a debugging wall outside of school](http://lwn.net/2000/0824/a/esr-sharing.php3).

 

What I don't understand is why schools don't teach systematic debugging. It's one of the most fundamental skills in engineering: start at the symptom of a problem and trace backwards to find the source. It takes, at most, half an hour to teach the absolute basics – and even that little bit would be enough to save a significant fraction of those who wash out and switch to non-STEM majors. Using the standard engineering class sequence of progressively more complex problems, a focus on debugging could expand to fill up to a semester, which would be enough to cover an obnoxious real-world bug: perhaps there's a system that crashes once a day when a Blu-ray DVD is repeatedly played using hardware acceleration with a specific video card while two webcams and record something with significant motion, as long as an obscure benchmark from 1994 is running[1](#fn:2).

 

This dynamic isn't unique to ECE 352, or even Wisconsin – I saw the same thing when TA'ed [EE 202](https://engineering.purdue.edu/~ee202/pastexams/F13FE.pdf), a second year class on signals and systems at Purdue. The problems were FFTs and Laplace transforms instead of dividers and Boolean[2](#fn:1), but the avoidance of teaching fundamental skills was the same. It was clear, from the questions students asked me in office hours, that those who were underperforming weren't struggling with the fundamental concepts in the class, but with algebra: the problems were caused by not having an intuitive understanding of, for example, the difference between `f(x+a)` and `f(x)+a`.

 

When I suggested to the professor[3](#fn:Z) that he spend half an hour reviewing algebra for those students who never had the material covered cogently in high school, I was told in no uncertain terms that it would be a waste of time because some people just can't hack it in engineering. I was told that I wouldn't be so naive once the semester was done, because some people just can't hack it in engineering. I was told that helping students with remedial material was doing them no favors; they wouldn't be able to handle advanced courses anyway because some students just can't hack it in engineering. I was told that Purdue has a loose admissions policy and that I should expect a high failure rate, because some students just can't hack it in engineering.

 

I agreed that a few students might take an inordinately large amount of help, but it would be strange if people who were capable of the staggering amount of memorization required to pass first year engineering classes plus calculus without deeply understanding algebra couldn't then learn to understand the algebra they had memorized. I'm no great teacher, but I was able to get all but one of the office hour regulars up to speed over the course of the semester. An experienced teacher, even one who doesn't care much for teaching, could have easily taught the material to everyone.

 

Why do we leave material out of classes and then fail students who can't figure out that material for themselves? Why do we make the first couple years of an engineering major some kind of hazing ritual, instead of simply teaching people what they need to know to be good engineers? For all the high-level talk about how we need to plug the [leaks](http://www.vtcite.com/~vtcite/system/files/blickenstaff-1.pdf) [in](http://www.itif.org/files/2010-refueling-innovation-exec-summ.pdf) [our](http://digitalcommons.ilr.cornell.edu/cgi/viewcontent.cgi?article=1137&context=workingpapers&sei-redir=1&referer=http%3A%2F%2Fscholar.google.com%2Fscholar_url%3Fhl%3Den%26q%3Dhttp%3A%2F%2Fdigitalcommons.ilr.cornell.edu%2Fcgi%2Fviewcontent.cgi%253Farticle%253D1137%2526context%253Dworkingpapers%26sa%3DX%26scisig%3DAAGBfm1oWNg44e2TO8gFdV0XAK2yRRHpfQ%26oi%3Dscholarr#search=%22http%3A%2F%2Fdigitalcommons.ilr.cornell.edu%2Fcgi%2Fviewcontent.cgi%3Farticle%3D1137%26context%3Dworkingpapers%22) [STEM](http://www.tandfonline.com/doi/abs/10.1080/02783190903386553#.UvapAHddU_0) [education](http://eric.ed.gov/?id=EJ789574) [pipeline](http://books.google.com/books?hl=en&lr=&id=zgsvXQ4GbfkC&oi=fnd&pg=PA3&dq=leaky+stem+education&ots=24p6ZeYtp4&sig=t2HNOrp2P9BGwq44w3k7mwZjteE#v=onepage&q=leaky%20stem%20education&f=false), not only are we not plugging the holes, we're proud of how fast the pipeline is leaking.

 

Thanks to Kelley Eskridge, @brcpo9, and others for comments/corrections.

 
### Elsewhere
 
- [John Regehr with four debugging book recommendations](https://blog.regehr.org/archives/849)

 
 
* * *
 
1. This is an actual CPU bug I saw that took about a month to track down. And this is the easy form of the bug, with a set of ingredients that causes the fail to be reproduced about once a day - the original form of the bug only failed once every few days. I'm not picking this example because it's particularly hard, either: I can think of plenty of bugs that took longer to track down and had stranger symptoms, including a disastrous bug that took six months for our best debugger to understand.

2. A co-worker of mine told me about a time at [Cray](http://en.wikipedia.org/wiki/Cray) when a high-level PM referred to the lack of engineering resources by saying that the project “needed more Boolean.” Ever since, I've thought of digital designers as people who consume caffeine and produce Boolean. I'm still not sure what analog magicians produce. [[return]](#fnref:1)
3. When I TA'd EE 202, there were two separate sections taught be two different professors. The professor who told me that students who fail just can't hack it was the professor who was more liked by students. He's affable and charismatic and people like him. Grades in his section were also lower than grades under the professor who people didn't like because he was thought to be mean. TA'ing this class taught me quite a bit, that people have no idea who's doing a good job and who's helping them, and also basic signals and systems (I took signals and systems I as an undergrad to fulfill a requirement and showed up to exams and passed them without learning any of the material, so to walk students through signals and systems II, I had to actually learn the material from both signals and systems I and II; before TA'ing the course, I told the department I hadn't taken the class and should probably TA a different class, but they didn't care, which taught another good life lesson). [[return]](#fnref:Z)

 
 
 [← That time Oracle tried to have a professor fired for benchmarking their database](https://danluu.com/anon-benchmark/) [Do programmers need math? →](https://danluu.com/math-bias/) 
 
 [Archive](https://danluu.com/) [Mastodon](https://mastodon.social/@danluu) [Bluesky](https://bsky.app/profile/danluu.com) 
 
 [Patreon](https://www.patreon.com/danluu) [LinkedIn](https://www.linkedin.com/in/danluu/) [Twitter](https://twitter.com/danluu/) [RSS](https://danluu.com/atom.xml)
 