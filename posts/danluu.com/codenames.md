 **How good can you be at Codenames without knowing any words?** | [Patreon](https://patreon.com/danluu)
* * *
 

About eight years ago, I was playing a game of [Codenames](https://amzn.to/4cgpzow) where the game state was such that our team would almost certainly lose if we didn't correctly guess all of our remaining words on our turn. From the given clue, we were unable to do this. Although the game is meant to be a word guessing game based on word clues, a teammate suggested that, based on the physical layout of the words that had been selected, most of the possibilities we were considering would result in patterns that were "too weird" and that we should pick the final word based on the location. This worked and we won.

 # [Click to expand explanation of Codenames if you're not familiar with the game] Codenames is played in two teams. The game has a 5x5 grid of words, where each word is secretly owned by one of {blue team, red team, neutral, assassin}. Each team has a "spymaster" who knows the secret word \<-\> ownership mapping. The spymaster's job is to give single-word clues that allow their teammates to guess which words belong to their team without accidentally guessing words of the opposing team or the assassin. On each turn, the spymaster gives a clue and their teammates guess which words are associated with the clue. The game continues until one team's words have all been guessed or the assassin's word is guessed (immediate loss). There are some details that are omitted here for simplicity, but for the purposes of this post, this explanation should be close enough. If you want more of an explanation, [you can try this video](https://www.youtube.com/watch?v=J8RWBooJivg), or [the official rules](https://czechgames.com/files/rules/codenames-rules-en.pdf)  

Ever since then, I've wondered how good someone would be if all they did was memorize all 40 setup cards that come with the game. To simulate this, we'll build a bot that plays using only position information would be (you might also call this an AI, but since we'll discuss using an LLM/AI to write this bot, we'll use the term bot to refer to the automated codenames playing agent to make it easy to disambiguate).

 

At the time, after the winning guess, we looked through the configuration cards to see if our teammate's idea of guessing based on shape was correct, and it was — they correctly determined the highest probability guess based on the possible physical configurations. Each card layout defines which words are your team's and which words belong to the other team and, presumably to limit the cost, the game only comes with 40 cards (160 configurations under rotation). Our teammate hadn't memorized the cards (which would've narrowed things down to only one possible configuration), but they'd played enough games to develop an intuition about what patterns/clusters might be common and uncommon, enabling them to come up with this side-channel attack against the game. For example, after playing enough games, you might realize that there's no card where a team has 5 words in a row or column, or that only the start player color ever has 4 in a row, and if this happens on an edge and it's blue, the 5th word must belong to the red team, or that there's no configuration with six connected blue words (and there is one with red, one with 2 in a row centered next to 4 in a row). Even if you don't consciously use this information, you'll probably develop a subconscious aversion to certain patterns that feel "too weird".

 

Coming back to the idea of building a bot that simulates someone who's spent a few days memorizing the 40 cards, below, there's a simple bot you can play against that simulates a team of such players. Normally, when playing, you'd provide clues and the team would guess words. But, in order to provide the largest possible advantage to you, the human, we'll give you the unrealistically large advantage of assuming that you can, on demand, generate a clue that will get your team to select the exact squares that you'd like, which is simulated by letting you click on any tile that you'd like to have your team guess that tile.

 

By default, you also get three guesses a turn, which would put you well above [99%-ile](/p95-skill/) among Codenames players I've seen. While good players can often get three or more correct moves a turn, averaging three correct moves and zero incorrect moves a turn would be unusually good in most groups. You can toggle the display of remaining matching boards on, but if you want to simulate what it's like to be a human player who hasn't memorized every board, you might want to try playing a few games with the display off.

 

If, at any point, you finish a turn and it's the bot's turn and there's only one matching board possible, the bot correctly guesses every one of its words and wins. The bot would be much stronger if it ever guessed words before it can guess them all, either naively or to strategically reduce the search space, or if it even had a simple heuristic where it would randomly guess among the possible boards if it could deduce that you'd win on your next turn, but even when using the most naive "board memorization" bot possible has been able to beat every Codenames player who I handed this to in most games where they didn't toggle the remaining matching boards on and use the same knowledge the bot has access to.

 

Reset GameToggle Matching Boards
Words per turn:

You are the starting player (Red). You have 9 moves.

Total moves left: 9

Moves left this turn: 3

### Matching Boards:

Turns passed: 0

  

This very silly bot that doesn't guess until it can guess everything is much stronger than most Codenames players[1](#fn:H). In practice, any team with someone who decides to sit down and memorize the contents of the 40 initial state cards that come in the box will beat the other team in basically every game.

 

Now that my curiosity about this question is satisfied, I think this is a minor issue and not really a problem for the game because word guessing games are generally not meant to be taken seriously and most of them end up being somewhat broken if people take them seriously or even if people just play them a lot and aren't trying to break the game. Relative to other word guessing games, and especially relative to popular ones, Codenames has a lot more replayability before players will start using side channel attacks, subconsciously or otherwise.

 

What happens with games with a limited set of words, like Just One or Taboo, is that people end up accidentally memorizing the words and word associations for "tricky" words after a handful of plays. Codenames mitigates this issue by effectively requiring people to memorize a combinatorially large set of word associations instead of just a linear number of word associations. There's this issue we just discussed, which came up when we were twenty-ish games into playing Codenames and is likely to happen on a subconscious level even if people don't realize that board shapes are influencing their play, but this is relatively subtle compared to the issues that come up in other word guessing games. And, if anyone really cares about this issue, they can use a digital randomizer to set up their boards, although I've never personally played Codenames in a group that's serious enough about the game for anyone to care to do this.

 

_Thanks to Josh Bleecher Snyder, David Turner, Won Chun, Laurence Tratt, Heath Borders, Spencer Griffin, Ian Henderson, and Yossi Kreinin for comments/corrections/discusison_

 
### Appendix: writing the code for the post
 

I tried using two different AI assistants to write the code for this post, [Storytell](https://storytell.ai/) and [Cursor](https://www.cursor.com/). I didn't use them as a programmer would use them and more used them as a non-programmer would use them to write a program. Overall, I find AI assistants to be amazingly good at some tasks while being hilariously bad at other tasks. That was the case here as well.

 

I basically asked them to write code and then ran it to see if it worked and would then tell the assistant what was wrong and have it re-write the code until it looked like that basically worked. Even using the assistants in this very naive way, where I deliberately avoided understanding the code and was only looking to get output that worked, I don't think it took too much longer to get working code than it would've taken if I just coded up the entire thing by hand with no assistance. I'm going to guess that it took about twice as long, but programmer estimates are notoriously inaccurate and for all I know it was a comparable amount of time. I have much less confidence that the code is correct and I'd probably have to take quite a bit more time to be as confident as I'd be if I'd written the code, but I still find it fairly impressive that you can just prompt these AI assistants and get code that basically works out in not all that much more time than it would take a programmer to write the code. These tools are certainly much cheaper than hiring a programmer and, if you're using one of these tools as a programmer and not as a naive prompter, you'd get something working much more quickly because you can simply fix the bugs in one of the mostly correction versions instead of spending most of your time tweaking what you're asking for to get the AI to eliminate a bug that would be trivial for any programmer to debug and fix.

 

I've seen a lot of programmers talk about how "AI" will never be able to replace programmers with reasons like "to specify a program in enough detail that it does what you want, you're doing programming". If the user has to correctly specify how the program works up front, that would be fairly strong criticism, but when the user can iterate, like we did here, this is a much weaker criticism. The user doesn't need to be a programmer to observe that an output is incorrect, at which point the user can ask the AI to correct the output, repeating this process until the output seems correct enough. The more a piece of software has strict performance or correctness constraints, the less well this kind of naive iteration works. Luckily for people wanting to use LLMs to generate code, most software that's in production today has fairly weak performance and correctness constraints. [People basically just accept that software has a ton of bugs and that it's normal to run into hundreds or thousands of software bugs in any given week](/everything-is-broken/) and that [widely used software is frequently 100000x slower than it could be if it were highly optimized](/slow-device/).

 

A moderately close analogy is the debate over whether or not AI could ever displace humans in support roles. Even as this was already happening, people would claim that this could never happen because AI makes bad mistakes that humans don't make. [But as we previously noted, humans frequently make the same mistakes](/customer-service/). Moreover, even if AI support is much worse, as long as the price:performance ratio is good enough, a lot of companies will choose the worse, but cheaper, option. [Tech companies have famously done this for consumer support of all kinds](/diseconomies-scale/), but we commonly see this for all sorts of companies, e.g., when you call support for any large company or even lots of local small businesses, it's fairly standard to get a pushed into a phone tree or some kind of bad automated voice recognition that's a phone tree replacement. These are generally significantly worse than a minimum wage employee, but the cost is multiple orders of magnitude lower than having a minimum wage employee pick up every call and route you to the right department, so companies have chosen the phone tree.

 

The relevant question isn't "when will AI allow laypeople to create better software than programmers?" but "when will AI allow laypeople to create software that's as good as phone trees and crappy voice recognition are for customer support?". And, realistically, the software doesn't even have to be that good because programmers are more expensive than minimum wage support folks, but you can get access to these tools for $20/mo. I don't know how long it will be before AI can replace a competent programmer, but if the minimum bar is to be as good at programming as automated phone tree systems are at routing my calls, I think we should get there soon if we're not already there. And, as with customer support, this doesn't have to be zero sum. Not all of the money that's saved from phone trees is turned into profit — some goes into hiring support people who handle other tasks.

 

BTW, one thing that I thought was a bit funny about my experience was that both platforms I tried, Storytell and Cursor, would frequently generate an incorrect result that could've been automatically checked, which it would then fix when I pointed out that the result was incorrect. Here's a typical sequence of interactions with one of these platforms:

 
- Me: please do X
- AI: [generates some typescript code and tests which fails to typecheck]
- Me: this code doesn't typecheck, can you fix this?
- AI: [generates some code and tests which fail when the tests are executed]
- Me: the tests fail with [copy+paste test failure] when run
- AI: [generates some code and tests which pass and also seems to work on some basic additional tests]

 

Another funny interaction was that I'd get in a loop where there were a few different bugs and asking the AI to fix one would reintroduce the other bugs even when specifically asking the AI to not reintroduce those other bugs. Compared to anyone who's using these kinds of tools day in and day out, I have very little experience with them (I just mess with them occasionally to see how much they've progressed) and I'd expect someone with more prompting experience to be able to specify prompts that break out of these sorts of loops more quickly than I was able to.

 

But, even so, it would be nicer experience if one of these environments had access to an execution environment so they could actually automatically fix these kinds of issues (when they're fixable) and could tell if the output was known to be wrong when a bit of naive re-prompting with "that was wrong and caused XYZ, please fix" doesn't fix the issue.

 

I asked Josh Bleecher Snyder, who's much more familiar with this space than I am (both technically as well as on the product side) why none of these tools do that and almost none of the companies do training or fine tuning with such an environment and his response was that almost everyone working in the space has bought into [The Bitter Lesson](http://www.incompleteideas.net/IncIdeas/BitterLesson.html) and isn't working on these sorts of mundane improvements. The idea is that the kind of boring engineering work that would be necessary to set up an environment like the above will be obsoleted by some kind of fundamental advancement, so it's a waste of time to work on these kinds of things that give you incremental gains. Sam Altman has even advised founders of companies that are relying on OpenAI APIs to assume that there will be huge improvements and build companies that assume this because the companies that don't will get put out of business by the massive improvements that are coming soon. From discussions with founders and VCs in this space, almost everyone has taken this to heart.

 

I haven't done any serious ML-related work for 11 years, so my opinion is worth about as much as any other layperson's, but if someone had made the contrarian bet on such a mundane system in the GPT-3 days, it seems like it would've been useful then and would still be useful with today's models, both for training/fine-tuning work as well for generating better output for the user. But I guess the relevant question is, would it make sense to try to build such a mundane system today which would be, for someone working in the space, a contrarian bet against progress? The big AI labs supposedly have a bunch of low-paid overseas contractors who label things, but if you want to label programming examples, per label, an environment that produces the canonical correct result is going to be cheaper than paying someone to try to label it unless you only want a tiny number of labels. At the level of a $1T or even $50B company, it seems like it should make sense to make the bet as a kind of portfolio move. If I want to start a startup and make a bet, then would it make sense? Maybe it's less obvious if you're putting all your eggs in one basket, but even then, perhaps there's a good case for it because almost the entire field is betting on something else? If the contrarian side is right, there's very little competition, which seems somewhat analogous to [our previous discussion on contrarian hiring](/talent/).

 
### Appendix: the spirit of the game vs. playing to win
 

Personally, when I run into a side-channel attack in a game or a game that's just totally busted if played to win, like Perfect Words, I think it makes sense to try to avoid "attacking" the game to the extent possible. I think this is sort of impossible to do perfectly in Codenames because people will form subconscious associations (I've noticed people guessing an extra word on the first turn just to mess around, which works more often than not — assuming they're not cheating, and I believe they're not cheating, the success rate strongly suggests the use some kind of side-channel information. That doesn't necessarily have to be positional information from the cards, it could be something as simple as subconsciously noticing what the spymasters are intently looking at.

 

[Dave Sirlin calls anyone who doesn't take advantage of any legal possibility to win is a sucker (he derogatorily calls such people "scrubs")](https://mastodon.social/@danluu/110544419353766175) (he says that you should use cheats to win, like using maphacks in FPS games, as long as tournament organizers don't ban the practice, and that tournaments should explicitly list what's banned, avoiding generic "don't do bad stuff" rules). I think people should play games however they find it fun and should find a group that likes playing games in the same way. If Dave finds it fun to memorize arbitrary info to win all of these games, he should do that. The reason I, as Dave Sirlin would put it, play like a scrub, for the kinds of games discussed here is because the games are generally badly broken if played seriously and I don't personally find the ways in which they're broken to be fun. In some cases, like Perfect Words, the game is trivially broken and I find it boring to win a game that's trivially broken. In other cases, like Codenames, the game could be broken by spending a few hours memorizing some arbitrary information. To me, spending a few hours memorizing the 40 possible Codenames cards seems like an unfun and unproductive use of time, making it a completely pointless activity.

 
### Appendix: word games you might like
 

If you like word guessing games, here are some possible recommendations in the same vein [list of programming book recommendations](/programming-books/) and [this list of programming blog recommendations](/programming-blogs/), where the goal is to point out properties of things that people tend to like and dislike (as opposed to most reviews I see, which tend to about whether or not something is "good" or "bad"). To limit the length of this list, this only contains word guessing games, which tend to be about the meaning of words, and doesn't include games that are about the mechanics of manipulating words rather than the meaning, such as [Banagrams](https://amzn.to/3WCbrAc), [Scrabble](https://amzn.to/4dbaQwA), or [Anagrams](https://en.wikipedia.org/wiki/Anagrams_(game)), or games that are about the mapping between visual representations and words, such as [Dixit](https://amzn.to/4ddQqmy) or [Codenames: Pictures](https://amzn.to/3WXGOH0).

 

Also for reasons of space, I won't discuss reasons people dislike games that apply to all or nearly all games in this list. For example, someone might dislike a game because it's a word game, but there's little point in noting this for every game. Similarly, many people choose games based on "weight" and dislike almost all word games because they feel "light" instead of "heavy", but all of these games are considered fairly light, so there's no point in discussing this (but if you want a word game that's light and intense, in the list below, you might consider Montage or Decrypto, and among games not discussed in detail, Scrabble or Anagrams, the latter of which is the most brutal word game I've ever played by a very large margin).

 
#### [Taboo](https://amzn.to/3SF1AIJ)
 

A word guessing game where you need to rapidly give clues to get your teammates to guess what word you have, where each word also comes with a list of 5 stop words you're not allowed to say while clueing the word.

 

A fun, light game, with two issues that give it low replayability:

 
- Since each word clued is a fully independent way, once your game group has run through the deck once or twice and everyone knows every word, the game becomes extremely easy; in the group I first played this in, I think this happened after we played it twice
- Even before that happens, when people realize that you can clue any word fairly easily by describing it in a slightly roundabout way, the game becomes fairly rote even before you accidentally remember the words just from playing too much

 

When people dislike this game, they often don't like that there's so much time pressure in this rapid fire game.

 
#### [Just One](https://amzn.to/4dbgM8S)
 

A word guessing game that's a bit like Taboo, in that you need to get your team to guess a word, but instead of having a static list of stop words for each word you want to clue, the stop words are dynamically generated by your team (everyone clues one word, and any clue that's been given more than once is stricken).

 

That stop words are generated via interaction with your teammates gives this game much more replayability than Taboo. However, the limited word list ultimately runs into the same problem and my game group would recognize the words and have a good way to give clues for almost every word after maybe 20-40 plays.

 

A quirk of the rules as written is that the game is really made for 5+ players and becomes very easy if you play with 4, but there's no reason you couldn't play this game with the 5 player games when you have 4 players.

 

A common complaint about this game is that the physical components are cheap and low quality considering the cost of the game ($30 MSRP vs. $20 for Codenames). Another complaint is that the words have wildly varying difficulties, some seemingly by accident. For exmaple, the word "grotto" is included and quite hard to clue if someone hasn't seen it, seemingly because the game was developed in French, where grotto would be fairly straightforward to clue.

 
#### Perfect Words([https://www.amazon.co.uk/TIKI-Editions-Perfect-Words-Intergenerational/dp/B0CHN8XP1F](https://www.amazon.co.uk/TIKI-Editions-Perfect-Words-Intergenerational/dp/B0CHN8XP1F))
 

A word guessing game where the team cooperatively constructs clues where the goal is to get the entire team to agree on the word (which can be any arbitrary word as long as people agree) from each set of clues.

 

The core game, trying to come up with a set of words that will generate agreement on what word they represent, makes for a nice complement to a game that's sort of the opposite, like Just One, but the rules as implemented seem badly flawed. It's as if the game designers don't play games and didn't have people who play games playtest it. The game is fairly trivial to break on your first or second play and you have to deliberately play the "gamey" part of the game badly to make the game interesting

 
#### [Montage](https://amzn.to/46GkfcV)
 

A 2 on 2 word game (although you can play Codenames style if you want more players). On each team, players alternate fixed time periods of giving clues and guessing words. The current board state has some constraints on what letters must appear in certain position of the word. The cluer needs to generate a clue which will get the guesser to guess their word that fits within the constraints, but the clue can't be too obvious because if both opponents guess the word before the cluer's partner, the opponents win the word.

 

Perhaps the hardest game on this list? Most new players I've seen fail to come up with valid clue during their turn on their first attempt (a good player can probably clue at least 5 things successfully per turn, if their partner is able to catch the reasoning faster than opponents). This is probably also the game that rewards having a large vocabulary the most of all the games on this list. It's also the only game on this list which exercises the skill of being able to think about the letter composition of words is useful, a la Scrabble.

 

As long as you're not playing with a regular partner and relying on "secret" agreements or shared knowledge, the direct adversarial nature of guessing gives this game very high replayability, at least as high as anything else on this list.

 

Like Perfect Words, the core word game is fun if you're into that kind of thing, but the rules of the game that's designed around the core game don't seem to have been very well thought through and can easily be gamed. It's not as bad here as in Perfect Words, but you still have to avoid trying to win to make this game really work.

 

When I've seen people dislike this game, it's usually because they find the game too hard, or they don't like losing — a small difference in skill results in a larger difference in outcomes than we see in other games in this list, so a new player should expect to lose very badly unless their opponents handicap themselves (which isn't built into the rules) or they have a facility for word games from having played other games. I don't play a lot of word games and I especially don't play a lot of "serious" word games like Scrabble or Anagrams, so I generally get shellacked when I play this, which is part of the appeal for me, but that's exactly what a lot of people don't like about the game.

 
#### Word Blur
 

A word guessing game where the constraint is that you need to form clues from the 900 little word tiles that are spread on the table in front of you.

 

I've only played it a few times because I don't know anyone local who's managed to snag a copy, but it seemed like it has at least as much replayability as any game on this list. The big downside of this game is that it's been out of print for over a decade and it's famously hard to get ahold of a copy, although it seems like it shouldn't be too difficult to make a clone.

 

When people dislike this game, it often seems to be because they dislike the core gameplay mechanic of looking at a bunch of word tiles and using them to make a description, which some people find overwhelming.

 

People who find Word Blur too much can try the knockoff, Word Slam which is both easier and easier to get ahold of since it's not as much of a cult hit (though it also appears to be out of print). Word Slam only has 105 words and the words are sorted, which makes it feel much less chaotic.

 
#### [Codenames](https://amzn.to/4fvMJu7)
 

Not much to add beyond what's in the post, except for common reasons that people don't like the game.

 

A loud person can take over the the game on each team, moreso than any other game on this list (except for Codenames: Duet). And although the game comes with a timer, it's rarely used (and the rules basically imply that you shouldn't use the timer), so another common complaint is that the game drags on forever when playing with people who take a long time to take turns, and unless you're the spymaster, there's not much useful to do when it's the other team's turn, causing the game to have long stretches of boring downtime.

 
#### [Codenames: Duet](https://amzn.to/4chnV6j)
 

Although this was designed to be the 2-player co-op version of Codenames, I've only ever played this with more than two players (usually 4-5), which works fine as long as you don't mind that discussions have to be done in a semi-secret way.

 

In terms of replayability, this Codenames: Duet sits in roughly the same space as Codenames, in that it has about the same pros and cons.

 
#### [Decrypto](https://amzn.to/3AoPDAw)
 

I'm not going to attempt to describe this game because every direct explanation I've seen someone attempt to give about the gameplay has failed to click with new players until they play a round or two. But, conceptually, each team rotates who gives a clue and the goal is to have people on your team correctly guess which clue maps to which word while having the opposing team fail to guess correctly. The guessing team has extra info in that they know what the words are, so it's easier for them to generate the correct mapping. However, the set of mappings generated by the guessing team is available to the "decrypting" team, so they might know that the mystery word was clued by "Lincoln" and "milliner", from which they might infer that the word is "hat", allowing them to correctly guess the mapping on the next clue.

 

I haven't played this game enough to have an idea of how much replayability it has. It's possible it's very high and it's also possible that people figure out tricks to make it basically impossible for the "decrypting" team to figure out the mapping. One major downside that I've seen is that, when played with random groups of players, the game will frequently be decided by which team has the weakest player (this has happened every time I've seen this played by random groups), which is sort of the opposite problem that a lot of team and co-op games have, where the strongest player takes over the game. It's hard for a great player to make game-winning moves, but it's easy for a bad player to make game-losing moves, so when played with non-expert players, whichever team has the worst player will lose the game.

 
#### [Person Do Thing](https://persondothing.com/)
 

David Turner says:

 

> Person Do Thing is like Taboo, but instead of a list of forbidden words, there's a list of allowed words. Forty basic words are always allowed, and (if you want) there are three extra allowed words that are specific to each secret word. Like Taboo, the quizzer can respond to guesses -- but only using the allowed words. Because so few words are allowed, it requires a lot of creativity to give good clues .. worth playing a few times but their word list was tiny last time I checked.
> 
>  
> 
> I suppose if a group played a lot they might develop a convention, e.g. "like person but not think big" for "animal". I've heard of this happening in Concept: one group had a convention that red, white, blue, and place refers to a country with those flag colors, and that an additional modifier specifies which: water for UK, cold for Russia, food for France, and gun for USA. I think it would take a fair number of these conventions to make the game appreciably easier.

 
#### [Semantle](https://semantle.com/)
 

Like wordle, but about the meaning of a word, according to word2vec. Originally designed as a solitaire game, it also works as a co-op game.

 

Although I'm sure there are people who love playing this game over and over again, I feel like the replayability is fairly low for most people (and almost no one I know ended up playing more than 40 games of this, so I think my feeling isn't uncommon). Once you play for a while and figure out how to guess words that quickly narrow down the search space, playing the game starts to feel a bit rote.

 

Most people I've talked to who don't like this game didn't like it because they weren't able to build a mental model of what's happening, making the word similarity scores seem like random nonsense.

 
 
* * *
 
1. If you find this mode too easy and you can accurately get your team to guess any three tiles you like every single time and have enough of an intuition of what patterns exist that you can usually avoid getting beaten by the AI, you can try the mode where the AI is allowed to guess one word a turn and will then win by guessing the rest of the words if the one word it correctly guesses is sufficient to narrow down the search space to a single possible board. In general, if you make three guesses, this narrows down the space enough that the AI can win with a single guess (in game terms, the AI would give an "unlimited" clue [[return]](#fnref:H)

 
 
 [← Steve Ballmer was an underrated CEO](https://danluu.com/ballmer/) [A discussion of discussions on AI bias →](https://danluu.com/ai-bias/) 
 
 [Archive](https://danluu.com/) [Mastodon](https://mastodon.social/@danluu) [Bluesky](https://bsky.app/profile/danluu.com) 
 
 [Patreon](https://www.patreon.com/danluu) [LinkedIn](https://www.linkedin.com/in/danluu/) [Twitter](https://twitter.com/danluu/) [RSS](https://danluu.com/atom.xml)
 