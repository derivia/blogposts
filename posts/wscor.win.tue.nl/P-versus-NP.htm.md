# The P-versus-NP page

This page collects links around papers that try to settle the "P versus NP"
question (in either way). Here are some links that explain/discuss this
question:

- A clear [formulation](http://www.claymath.org/sites/default/files/pvsnp.pdf) of the "P versus NP" question by[Stephen Cook.](http://www.cs.toronto.edu/~sacook/)
- Mathworld's [page](http://mathworld.wolfram.com/PVersusNPProblem.html) on "P versus NP"
- The Wikipedia [page](http://en.wikipedia.org/wiki/Complexity_classes_P_and_NP) on "P versus NP"
- [Michael Sipser](http://www-math.mit.edu/people/faculty/sipser.html) has a survey paper on["The History and Status of the P versus NP question"](P-versus-NP/sipser.pdf)(Proceedings of the 24th Annual ACM Symposium on the Theory of Computing, 1992, pp. 603-619).
- [Christos Papadimitriou](http://www.cs.berkeley.edu/~christos/) has written a[retrospective](http://www.cs.berkeley.edu/~christos/retro.ps) on NP-completeness
- Lance Fortnow and Steve Homer:[A Short History of Computational Complexity](http://people.cs.uchicago.edu/~fortnow/beatcs/column80.pdf)
- Scott Aaronson: [Is P Versus NP Formally Independent?](http://www.scottaaronson.com/papers/pnp.pdf)and[NP-complete Problems and Physical Reality](http://arxiv.org/abs/quant-ph/0502072)
- Avi Wigderson: [P, NP and Mathematics - a computational complexity perspective](http://www.math.ias.edu/~avi/PUBLICATIONS/MYPAPERS/W06/w06.pdf)

For a correct solution of the "P versus NP" question, the Clay Mathematics
Institute ([CMI](http://www.claymath.org/)) will award a prize of $1.000.000.

Here is the outcome of an [opinion poll](http://www.cs.umd.edu/~gasarch/papers/poll.pdf)on "P versus NP" conducted by[William Gasarch.](http://www.cs.umd.edu/~gasarch/)
Here are the [reasons](http://www.wisdom.weizmann.ac.il/~oded/p-vs-np.html)why Oded Goldreich refuses to proof-read papers settling the "P versus NP" question.
Here is what googlism thinks of["P versus NP"](http://www.googlism.com/index.htm?ism=P+versus+np&type=2)and["P=NP"](http://www.googlism.com/what_is/p/p_=_np/).
Here is a[parody](http://geomblog.blogspot.com/2004/04/meta-proof.html)of a typical comp.theory newsgroup discussion of a typical P=/!=NP proof.
Here is Homer Simpson on "P versus NP" (picture[#1](P-versus-NP/homer1.jpg) /[#2](P-versus-NP/homer2.jpg))
Here is a [cartoon](P-versus-NP/pudlak.png)by Pavel Pudlak on "P versus NP"
Here is a (youtube)[movie](http://www.youtube.com/watch?v=HjUEEHTyhdA)on P and NP.

What Sir William Timothy Gowers [did](http://gowers.wordpress.com/2013/10/24/what-i-did-in-my-summer-holidays/) in his summer holidays 2013, and a[sitemap](http://gowers.tiddlyspace.com/#[[A%20sitemap%20for%20the%20P%20versus%20NP%20notebook]]) for his P versus NP notebook.
Scott Aaronson:[Why](http://www.scottaaronson.com/blog/?p=1720)should you believe P not equal NP?

## Milestones

Note: The following paragraphs list many papers that try to contribute to the
P-versus-NP question. Among all these papers, there is only **a single paper**
that has appeared in a peer-reviewed journal, that has thoroughly been verified
by the experts in the area, and whose correctness is accepted by the general
research community: The paper by Mihalis Yannakakis. (And this paper does not
settle the P-versus-NP question, but "just" shows that a certain approach to
settling this question will never work out.)

1. **[Equal]:** In 1986/87 Ted Swart (University of Guelph) wrote a number of papers (some of them had the title: _"P=NP"_) that gave linear programming formulations of polynomial size for the Hamiltonian cycle problem. Since linear programming is polynomially solvable and Hamiltonian cycle is NP-hard, Swart deduced that P=NP.
In 1988, Mihalis Yannakakis closed the discussion with his paper "Expressing combinatorial optimization problems by linear programs" (Proceedings of STOC 1988, pp. 223-228). Yannakakis proved that expressing the traveling salesman problem by a symmetric linear program (as in Swart's approach) requires exponential size. The [journal version](http://dx.doi.org/10.1016/0022-0000(91)90024-Y) of this paper has been published in Journal of Computer and System Sciences 43, 1991, pp. 441-466.

2. **[Equal]:** The[1996 issue](http://www.emis.de/journals/SWJPAM/vol1-96.html) (Volume 1, 1996, pp. 16-29) of the "SouthWest Journal of Pure and Applied Mathematics" ([SWJPAM](http://www.emis.de/journals/SWJPAM/)) contains the[article](http://www.emis.de/journals/SWJPAM/Vol1_1996/plotnikov.ps)_"Polynomial-Time Partition of a Graph into Cliques"_by the Ukrainian mathematician [Anatoly Plotnikov.](http://www.vinnica.ua/~aplot/) This article designs a polynomial time algorithm for an NP-hard graph problem, and thus proves P=NP.
(SWJPAM is an electronic journal devoted to all aspects of Pure and Applied mathematics, and related topics. Authoritative expository and survey articles on subjects of special interest are also welcomed. SWJPAM serves as an international forum for the publication of high-quality strictly peer-reviewed original research articles. The article is usually sent to at least two experts in the area. Two positive reviews are required for the acceptance and publication of any submitted article.)

3. **[Equal]:** Around 1997 Tang Pushan provided a polynomial algorithm for the clique problem. The two relevant papers are_"An algorithm with polynomial time complexity for finding clique in a graph"_by Tang Pushan (Proceedings of 5th International Conference on CAD&CG, Shenzhen, P.R. China, 1997, pp 500-505) and_"HEWN: A polynomial algorithm for CLIQUE problem"_by Tang Pushan and Huang Zhijun (Journal of Computer Science & Technology 13(Supplement), 1998, pp 33-44). Clearly this implies P=NP.
Zhu Daming, Luan Junfeng and M. A. Shaohan (all affiliated with Shandong University, China) refute these claims in their paper[_"Hardness and methods to solve CLIQUE"_](http://portal.acm.org/citation.cfm?id=501491&dl=)(Journal of Computer Science and Technology 16, 2001, pp 388-391).

4. **[Equal]:** Here is Miron Telpiz's[web-page](http://www.tarusa.ru/~mit/ENG/eng.html) on his proof of P=NP. His main theorem reads:_"The class of NP-complete problems is coincides with the class P"_. The proof of this theorem has been derived in the second half of the year 2000, and it is contained in the book "Positionality principle for notation and calculation the functions (Volume One)".

5. **[Not equal]:** The 3rd International Conference on Information and Communications Security (ICICS 2001) took place in Xian, China, November 13-16, 2001. The [proceedings](http://springerlink.metapress.com/openurl.asp?genre=issue&issn=0302-9743&volume=2229) of ICICS 2001 have been published as Volume 2229 of Springer Lecture Notes in Computer Science. Pages 495-501 of these proceedings contain the[paper](http://springerlink.metapress.com/openurl.asp?genre=article&issn=0302-9743&volume=2229&spage=495)_"Redundancy, Obscurity, Self-Containment & Independence"_ by Seenil Gram; this paper first proves the so-called "Indistinguishability Lemma" and then deduces (on the top of page 501) as a simple, direct corollary that EXP is contained in NP. Seenil Gram has also provided some additional[explanations](http://www.google.com/groups?selm=bdd4c781.0111191346.4f1279d8%40posting.google.com&oe=UTF-8&output=gplain)on his breakthrough result in the newsgroup "sci.crypt".
(Thanks to Daniel Marx for providing this link.)

6. **[Equal]:** In May 2002 Charles Sauerbier designed a polynomial time algorithm for the satisfiability problem. This algorithm employs an unconventional approach premised on set theory (which does not use search or resolution) to partition the set of all assignments into nonsatisfying and satisfying assignments. The [paper](http://arxiv.org/abs/cs.CC/0205064)_"A polynomial time (heuristic) SAT algorithm"_can be found at the "arXiv.org e-Print archive".
In September 2003, a hole has been found in the algorithm: An eleventh hour change admits a path inconsistency. The inconsistency arises due to an improper closure of a path to a cycle against a root not supportive of the path. The mathematical basis of the algorithm remains supportive of the intended solution, and a revision of the algorithm is underway.

7. **[Equal]:** Here is a link to a[paper](http://arxiv.org/abs/cs.CC/0303008)by Givi Bolotashvili that proves P=NP. The title of the paper is_"Solution of the Linear Ordering Problem (NP=P)"_. The paper has been archived in March 2003 at the "arXiv.org e-Print archive".
An earlier version of this paper appeared in 1990 in the journal "Soobshcheniya Akademii Nauk Gruzinskoi SSR" under the title _"A polynomial algorithm for a problem of linear orders"_. This version was written in Russian with an English and a Georgian summary.

8. **[Undecidable]:** Nicholas Argall proved on 25 March 2003 that P=NP is undecidable. His main line of argument is that a provable answer to the P=NP question requires a complete and consistent formal statement of the question. Then he invokes Goedel's theorem and deduces that P=NP is undecidable. The proof is actually quite short:[ascii file](P-versus-NP/argall.txt)
(Thanks to Daniel Marx for pointing me to this result.)

9. **[Unprovable]:** The journal "Applied Mathematics and Computation" ([AMC](http://www.elsevier.com/locate/amc)) addresses work at the interface between applied mathematics, numerical computation, and applications of systems-oriented ideas to the physical, biological, social, and behavioral sciences, and emphasizes papers of a computational nature focusing on new algorithms, their analysis and numerical results.
Applied Mathematics and Computation 145 (2003), pp. 655-665, contains the [article](http://dx.doi.org/10.1016/S0096-3003(03)00176-0)_"Consequences of an exotic definition for P=NP"_by N.C.A. da Costa and F.A. Doria. This article shows that "P-not-equal-to-NP" is unprovable in ZFC.
Here is a[review](http://wwwmath.uni-muenster.de/math/inst/logik/org/staff/rds/review.ps) of this proof by the German logician[Ralf Schindler.](http://wwwmath.uni-muenster.de/math/inst/logik/org/staff/rds/)Andreas Blass, the reviewer of this paper in the AMS Mathematical Reviews, writes in his review MR2009291 (2004f:03076):_"The authors claim to prove (Corollary 4.6) that, if ZFC is consistent, then it remains so when P=NP is added as an additional axiom. Unfortunately, there is an error in the proof [...]."_

10. **[Not equal]:** [Hubert Chen](http://www.tecn.upf.es/~hchen/)has a [webpage](http://www.cs.cornell.edu/hubes/pnp.htm) (2003) with a really short argument that "P-not-equal-to-NP":
_"Proof by contradiction. Assume P=NP. Let y be a proof that P=NP. The proof y can be verified in polynomial time by a competent computer scientist, the existence of which we assert. However, since P=NP, the proof y can be generated in polynomial time by such computer scientists. Since this generation has not yet occurred (despite attempts by such computer scientists to produce a proof), we have a contradiction."_

11. Here is a link to the[paper](http://arxiv.org/abs/cs/0310060)_"Evidence that P is not equal to NP"_by Craig Alan Feinstein. This paper does **not** claim to settle the "P versus NP" question, but provides some evidence for "P-not-equal-to-NP" in a certain restricted model of computation. An earlier [paper](http://arxiv.org/abs/cs/0305035)_"P is not equal to NP"_by the same author has been withdrawn, since a counter-example had been found. Both papers have been archived in 2003/04 at the "arXiv.org e-Print archive".

12. **[Not equal]:** In 2004, Ki-Bong Nam, S.H. Wang, and Yang Gon Kim published the paper_"Linear Algebra, Lie Algebra and their applications to P versus NP"_in the Journal of Applied Algebra and Discrete Structures, on pages 1-26 of volume 2. This journal is published by SAS Int. Publ., Delhi, India. The paper defines a counting problem which purports to be a counterexample to P=NP.
Richard K. Molnar, the reviewer of this paper in the AMS Mathematical Reviews, writes in his review MR2038228 (2005e:68070):_"The crux is the assertion that the problem is not solvable in polynomial time because the relevant system of equations contains expressions not just determined from the data but also random variables. The calculations are lengthy, complex, and difficult to follow, and the assertion of non-computability in polynomial time is not convincing to the reviewer."_
(Thanks to Hwasop Lihm for guiding me to these informations.)

13. **[Not equal]:** In spring 2004 Mikhail N. Kupchik started a series of papers that aim at proving "P-not-equal-to-NP". At that time, Mikhail Kupchik was a 3rd year undergraduate of the department of applied mathematics at the University of KPI, Kiev, Ukraine. The papers in that series are all called_"P versus NP problem solution"_. They are available as[pdf-file #1](http://users.i.com.ua/~zkup/pvsnp_en.pdf);[pdf-file #2](http://users.i.com.ua/~zkup/pvsnp_en_001.pdf);[pdf-file #3](http://users.i.com.ua/~zkup/pvsnp_en_002.pdf).

14. **[Equal]:** Here is another [paper](http://arxiv.org/abs/cs/0406056)with the title _"P=NP"_. It has been archived in June 2004, and it proves that P=NP. The authors are Selmer Bringsjord and Joshua Taylor. They look forward to receiving the $1 million Clay prize but concede that they provide a meta-level argument.
(Thanks to Tuerker Biyikoglu for providing this link.)

15. **[Not equal]:** In the essay _"Some consequences of defining mathematical objects constructively and mathematical truth effectively"_ from 2004, Bhupinder Singh Anand considers a constructive interpretation of classical first order theory in which he argues that the class P of polynomial-time languages in the P-versus-NP problem may define a mathematical concept that cannot be added as a formal mathematical symbol to the theory without inviting contradiction.
In the paper _"A density-based approach for non-heuristic approximations of prime counting functions"_ from 2015, Bhupinder Singh Anand shows that the prime divisors of any integer n are mutually independent, and concludes that any deterministic algorithm which always computes a prime factor of n is necessarily of the order O(n/log n). Hence Integer Factorising cannot be polynomial-time, whence P is not equal to NP. The paper is available at[http://arxiv.org/abs/1510.04225](http://arxiv.org/abs/1510.04225).

16. **[Not equal]:** Marius Ionescu has written a[paper](http://arxiv.org/abs/cs/0409039)with the title _"P is not NP"_. The paper has been archived in September 2004. It introduces the OWMF (One Way Mod Function) problem. It shows that OWMF is in NP, but cannot be solved in polynomial time, since there is no faster algorithm other then exhaustive search for it.
Marius Ionescu also maintains a web-page[http://1wayfx.com](http://1wayfx.com./)where he applies his results on the "P versus NP" question to cryptographic systems. In particular, Ionescu uses his insights into the 1WayFx Model to construct the MI cryptosystem, a unique new security solution, without the need of SSL, PKI, or third party involvement. The MI cryptosystem solves today's major implementation issues, including difficulty of deployment, data/message integrity, security exposure, and performance.
(Thanks to Jeff Erickson and Maxim Sviridenko for providing these links.)

17. **[Equal]:** In October 2004, Moustapha Diaby constructed a linear programming formulation for the travelling salesman problem (TSP). His paper is called _"P=NP: Linear Programming Formulation of the Traveling Salesman Problem"_, and it is available at [http://www.business.uconn.edu/users/mdiaby/tsplp/](http://www.business.uconn.edu/users/mdiaby/tsplp/). The correctness of Diaby's proof is frequently discussed in the newsgroup comp.theory. In reaction to these discussions in comp.theory, the paper has been revised and clarified many times. A new version of the paper can be found at[http://arxiv.org/abs/cs/0609005](http://arxiv.org/abs/cs/0609005) (uploaded: 2 Sep 2006).
In October 2005, Moustapha Diaby also constructed a linear programming formulation of the QAP (quadratic assignment problem). This yields yet another proof that P=NP. The paper is available at[http://www.business.uconn.edu/users/mdiaby/qaplp/](http://www.business.uconn.edu/users/mdiaby/qaplp/). A new version of the paper can be found at[http://arxiv.org/abs/cs.CC/0609004](http://arxiv.org/abs/cs.CC/0609004) (uploaded: 2 Sep 2006). A version of the QAP paper has been published in the 2006 IMECS Conference Proceedings (ISBN: 988-98671-3-3). This version was also awarded a "Certficate of Merit Award" by the conference organizers (IAENG).
In 2010, Moustapha Diaby provided two further proofs for P=NP. His papers[Linear programming formulation of the vertex colouring problem](http://www.inderscience.com/search/index.php?action=record&rec_id=32718)and[Linear programming formulation of the set partitioning problem](http://www.inderscience.com/search/index.php?action=record&rec_id=34067)give linear programming formulations for two well-known NP-hard problems. Both papers were published in the "International Journal of Operational Research (IJOR)".
In April 2016, Moustapha Diaby and Mark H Karwan published the book _"Advances in Combinatorial Optimization "_with World Scientific Publishers. The book is available at the website[http://www.worldscientific.com/worldscibooks/10.1142/9725](http://www.worldscientific.com/worldscibooks/10.1142/9725). The book presents a generalized framework for formulating hard combinatorial optimization problems as polynomial sized linear programs, and hence implies P=NP.
(Thanks to Andrea Lodi, Philipp Lucas, Silvano Martello, Patric Östergård, Philippe Schnoebelen, and Ugo Vaccaro for providing some of these links.)

18. **[Not equal]:** In November 2004, Mircea Alexandru Popescu Moscu introduced an invariance principle of complexity hierarchies. His paper is available at[http://arxiv.org/abs/cs.CC/0411033](http://arxiv.org/abs/cs.CC/0411033)and seems to prove that P is not equal to NP, if _"you are willing to believe that the property of a complexity class to be closed or openend to the nondeterministic extension operator it's an invariant of complexity theory"_.

19. **[Equal]:** In January 2005, Andrea Bianchini proved that P is equal to NP, by constructing a polynomial time exact algorithm for the NP-hard SubsetSum problem. His paper _"A Polynomial-time Exact Algorithm for the Subset Sum Problem"_is available as [pdf](http://es-andreabianchini.it/ssp_eng.pdf).
(Thanks to Philip Bille for providing some pointers.)

20. **[Not equal]:** In February 2005, Raju Renjit Grover proved that P is not equal to NP, and also that P is not equal to co-NP. His paper is available at[http://arxiv.org/abs/cs/0502030](http://arxiv.org/abs/cs/0502030v1). The paper proves that (i) all algorithms for the NP-hard clique problem are of a particular type, and (ii) that all algorithms of this particular type are not polynomial in the worst case.
(Thanks to Daniel Marx for providing this link.)

21. **[Not equal]:** In March 2005, Dr. Viktor V. Ivanov proved that P is not equal to NP. His proof is based on _better estimates of lower bounds on time complexity that hold for all solution algorithms_. Almost no special knowledge other than logical and combinatorial efforts is needed to understand the proof. Here is the[pdf-file](http://www.math.usf.edu/~eclark/NPvsP.pdf) for this paper.
In 2014, a new version of the proof has been published in the_International Journal of Pure and Applied Mathematics_ [IJPAM](http://www.ijpam.eu/)). The paper is available at the following[link](http://www.ijpam.eu/contents/2014-94-1/9/index.html).
(Thanks to Boaz Barak for providing this link.)

22. **[Not equal]:** In June 2005, Bhupinder Singh Anand proved that P is not equal to NP,_under the assumption_ that every Turing-decidable true arithmetical relation is provable in Peano Arithmetic. His paper is called _"Is the Halting problem effectively solvable non-algorithmically, and is the Goedel sentence in NP, but not in P?"_, and it is available as[pdf-file](http://xxx.lanl.gov/pdf/math.GM/0506126)from[math.GM/0506126](http://xxx.lanl.gov/abs/math.GM/0506126). The paper shows that (under a provability assumption as above) Goedel's arithmetical predicate R(x), treated as a Boolean function, is in the complexity class NP, but not in P. (Another interesting result in this paper states that the Halting problem is effectively solvable, albeit not algorithmically.)
(Thanks to Ugo Vaccaro for providing this link.)

23. **[Not equal]:**In July 2005, Craig Alan Feinstein wrote the paper [_"Complexity Theory for Simpletons"_](http://arxiv.org/abs/cs.CC/0507008). This paper explains why P is not equal to NP in the so-called Mabel-Mildred-Feinstein model of computation. The paper also kind of settles the Collatz 3n+1 Conjecture: Every valid proof in the Feinstein-model-of-proof must have an infinite number of lines. A similar statement is shown to hold for the Riemann Hypothesis.
Another version of this paper appeared under the titel[_"Complexity science for simpletons"_](http://www.encyclopedia.com/doc/1G1-149317859.html) in Progress in Physics, July 2006.[_Progress in Physics_](http://www.encyclopedia.com/Progress+in+Physics/publications.aspx?pageNumber=1) claims to be a quarterly, peer-reviewed scientific journal of advanced studies in theoretical and experimental physics, including related themes from mathematics.
(Thanks to Clyde P. Kruskal for providing some of these links.)

24. **[Not equal]:**In Summer 2005, Lev Gordeev showed a way how to prove that P is not equal to NP. His proof is not yet complete, but he states that what remains to be done is technical work along the lines of traditional combinatorics. Several relevant papers are available from a [web-page](http://www.wsi.uni-tuebingen.de/lehrstuehle/logik-und-sprachtheorie/personen/ehemalige-und-sonstige-mitarbeiter/pd-dr-lev-gordeev/publications.html) at the University of Tuebingen (Germany), and in particular [_"Proof-sketch: Why NP is not P"_](http://www.wsi.uni-tuebingen.de/lehrstuehle/logik-und-sprachtheorie/personen/ehemalige-und-sonstige-mitarbeiter/pd-dr-lev-gordeev/current-research.html).
(Thanks to Omar Al-Khayyam and Sebastian Schoener for providing these links.)

25. **[Equal]:**In October 2005, Lokman Kolukisa designed a polynomial time algorithm for recognizing tautologies. This implies P=co-NP, and hence also P=NP. His paper is called _"Two Dimensional Formulas and Tautology Checking"_and it is available [here](http://geocities.com/lkoluk2003/).
(Thanks to Moritz Hammer for providing this link.)

26. **[Equal]:** In November 2005, Francesco Capasso constructed a polynomial-time algorithm for Circuit-SAT. This implies P=NP. The paper is available at[http://arxiv.org/abs/cs.CC/0511071](http://arxiv.org/abs/cs.CC/0511071). Versions 1, 2, and 3 of this paper (that have been uploaded to the archive, respectively, on Nov 18, 22, and 23) were called_"A polynomial-time algorithm for Circuit-SAT"_. From Version 4 (uploaded Nov 28) onwards, the paper is called_"A polynomial-time heuristic for Circuit-SAT"_.
(Thanks to Luca Trevisan for providing this link.)

27. **[Not equal]:** In November 2005, Ron Cohen proved that P is not equal to NP. In addition, his paper shows that P is not equal to the intersection of NP and co-NP. Finally, the exact inclusion relationships between the classes P, NP and co-NP are discussed. The paper is available at[http://www.arxiv.org/abs/cs.CC/0511085](http://www.arxiv.org/abs/cs.CC/0511085). The title of the paper is_"Proving that P is not equal to NP and that P is not equal to the intersection of NP and co-NP"._
(Thanks to Vahan Mkrtchyan for providing this link.)

28. **[Equal]:** In December 2005, Miron Teplitz proved P=NP. His paper _"Sigma-notation and the equivalence of P and NP classes"_was published in _Journal of Information and Organizational Sciences (JIOS)_, Faculty of Organization and Informatics, Croatia. The paper is available at the page[http://www.tarusa.ru/~mit/ENG/sigma01\_e.php](http://www.tarusa.ru/~mit/ENG/sigma01_e.php).

29. **[Equal]:** In 2005, Dr. Joachim Mertz proved P=NP. His main contribution is a linear programming formulation of the TSP with O(n^5) variables and O(n^4) constraints. More information about this approach can be found at[http://www.merlins-world.de/](http://www.merlins-world.de/).

30. **[Not equal]:** In March 2006, Bhupinder Singh Anand proved that P is not equal to NP:[http://arxiv.org/abs/math.GM/0603605](http://arxiv.org/abs/math.GM/0603605). The title of the paper is_"P =/= NP"_. The paper shows that all provable arithmetical formulas are Turing-decidable under the standard interpretation of a standard, first-order, Peano Arithmetic, PA. An immediate consequence is that the set of Goedel-formulas of PA is empty, and that PA has no non-standard models. This implies P=/=NP.

31. **[Not equal]:** In July 2006, Craig Alan Feinstein provided yet another version of his proof that P is not equal to NP. The paper is available at[http://arxiv.org/abs/cs.CC/0607093](http://arxiv.org/abs/cs.CC/0607093). The title of the paper is_"A New and Elegant Argument that P is not NP"_
A response to this proof appeared in June 2007 in the article[_"Critique of Feinstein's Proof that P is not Equal to NP"_](http://arxiv.org/abs/0706.2035)by Kyle Sabo, Ryan Schmitt, and Michael Silverman.
The final version of this paper appeared under the titel[_"An Elegant Argument that P≠NP"_](http://www.ptep-online.com/index_files/2011/PP-25-07.PDF)in Progress in Physics, 2011, Volume 2, on pages 30-31.
(Thanks to Luca Trevisan, Clyde P. Kruskal and Neil McKay for providing these links.)

32. **[Equal]:** In August 2006, Mohamed Mimouni proved P=NP by constructing a polynomial time algorithm for the clique problem. His paper (in French) is available at[http://www.wbabin.net/science/mimouni.pdf](http://www.wbabin.net/science/mimouni.pdf).
Here are some [comments](http://www.wbabin.net/comments/hofman.htm) by Radoslaw Hofman on this proof.

33. **[Equal]:** In October 2006, Sergey Gubin proved P=NP by constructing a polynomial time algorithm for the directed Hamiltonian cycle problem. His paper is available at[http://arxiv.org/abs/cs.DM/0610042](http://arxiv.org/abs/cs.DM/0610042). The title of the paper is_"A Polynomial Time Algorithm for The Traveling Salesman Problem"_.
Here are some[comments](http://arxiv.org/abs/0704.0514)by Radoslaw Hofman on this proof.
And here is a full[refutation](http://arxiv.org/abs/0804.2699)of Gubin's arguments by Ian Christopher, Dennis Huo, Bryan Jacobs from April 2008.
(Thanks to Juergen Ernst for providing the link to Christopher, Huo, and Jacobs.)

34. **[Not equal]:** In 2006, Radoslaw Hofman proved that P is not equal to NP (under the assumption that deterministic Turing machines only use deterministic calculation models). His paper _"Complexity Considerations, cSAT Lower Bound"_is available at[http://arxiv.org/abs/0704.0514](http://arxiv.org/abs/0704.0514).

35. In November 2006, Raju Renjit proved that co-NP is equal to NP:[http://arxiv.org/abs/cs.CC/0611147](http://arxiv.org/abs/cs.CC/0611147). The title of the paper is_"co-NP Is Equal To NP"_. By investigating the clique problem, the author recognizes that there exists a case where the time complexity of NP and co-NP are the same in the worst case. This result nicely complements an earlier paper by Renjit (from February 2005), where he proves that P is not equal to NP.

36. **[Not equal]:** In November 2006, Rubens Ramos Viana proved that P is not equal to NP:[http://arxiv.org/abs/quant-ph/0612001](http://arxiv.org/abs/quant-ph/0612001). The title of the paper is_"Using Disentangled States and Algorithmic Information Theory to Solve the P Versus NP Problem"_. Viana uses (i) the Chaitin number Omega and (ii) the fact that the general decomposition of an N-way disentangled state is an irreducible sentence whose number of coefficients grows in a non-polynomial way with N, to construct an NP problem that can never be solved in P.

37. **[Equal]:** In December 2006, Howard Kleiman proved that P is equal to NP:[http://arxiv.org/abs/math.CO/0612114](http://arxiv.org/abs/math.CO/0612114). The title of the paper is_"The Asymmetric Traveling Salesman Problem"_. Kleiman uses a modification of the Floyd-Warshall algorithm to solve the Asymmetric Traveling Salesman Problem in polynomial time.

38. **[Equal]:** In 2006, Khadija Riaz and Malik Sikander Hayat Khiyal proved that P is equal to NP:[http://www.scialert.net/pdfs/itj/2006/851-859.pdf](http://www.scialert.net/pdfs/itj/2006/851-859.pdf). The title of their paper is_"Finding Hamiltonian cycle in polynomial time"_. The result has been published in the Information Technology Journal 5 (2006), pages 851-859.
(Thanks to Joe Mitchell for providing this link.)

39. **[Equal]:** In June 2007, Anatoly D. Plotnikov established P=NP by developping an experimental algorithm for the exact solving of the maximum independent set problem. The theoretical estimation of the running time on n-vertex graphs is O(n^8). The algorithm was tested by a program on random graphs, and the testing confirmed the correctness of the algorithm. The paper _"Experimental Algorithm for the Maximum Independent Set Problem"_ is available at[http://arxiv.org/abs/0706.3565](http://arxiv.org/abs/0706.3565).
(Thanks to Mathieu Chapelle for providing this link.)

40. **[Equal]:** In summer 2007, Guohun Zhu proved that P is equal to NP:[http://arxiv.org/abs/0704.0309v3](http://arxiv.org/abs/0704.0309v3). The title of the paper is_"The Complexity of HCP in Digraps with Degree Bound Two"_. Zhu uses techniques from matching theory to design a polynomial time solution for the NP-hard Hamiltonian Cycle problem in bipartite cubic graphs. This [page](http://www.glrq.net/bicubic.html)contains an outline of the argument.

41. **[Equal]:** (a) In August 2007, Matthew Delacorte proved that he graph isomorphism problem is PSPACE-complete:[http://arxiv.org/abs/0708.4075](http://arxiv.org/abs/0708.4075). His (very short) paper is titled_"Graph Isomorphism is PSPACE-complete"_. This result does not settle the P-versus-NP question, but it does imply NP=PSPACE.
(b) In November 2007, Reiner Czerwinski proved that the graph isomorphism problem is polynomially solvable:[http://arxiv.org/abs/0711.2010](http://arxiv.org/abs/0711.2010). The paper is titled_"A Polynomial Time Algorithm for Graph Isomorphism"_; it proposes an algorithm that has polynomial complexity, and constructively supplies the evidence that graph isomorphism lies in P.
In combination, the two results in (a) and (b) imply that P=PSPACE, which of course yields P=NP as a corollary.
(Thanks to Marcus Ritt for providing the link to Delacorte, and thanks to Jan van Leeuwen for providing the link to Czerwinski.)

42. **[Equal]:** In March 2008, Cynthia Ann Harlan Krieger applied for a patent for a polynomial time solution for the (NP-complete) Hamiltonian circuit problem:[http://www.freepatentsonline.com/y2008/0071849.html](http://www.freepatentsonline.com/y2008/0071849.html).
The full proofs of the underlying theorems are available in the paper["The Proof of P=NP"](http://teaching.cs.uml.edu/~heines/techrpts/Papers/HC-final.pdf)by Cynthia Ann Harlan Krieger and Lee K. Jones.
(Thanks to Alasdair Urquhart for providing these links.)

43. **[Not equal]:** In April 2008, Jerrald Meek proved that P is not equal to NP:[http://arxiv.org/abs/0804.1079](http://arxiv.org/abs/0804.1079). The title of the paper is _"P is a proper subset of NP"_. The paper demonstrates that as the number of clauses in a NP-complete problem approaches infinity, the number of input sets processed per computations performed also approaches infinity when solved by a polynomial time solution. It is then possible to determine that the only deterministic optimization of an NP-complete problem that could prove P=NP would be one that examines no more than a polynomial number of input sets for a given problem. By demonstrating that at least one NP-complete problem exists that can not be solved by checking a polynomial subset of the total set of possible input sets, it then follows that P is not equal to NP.

44. **[Not equal]:** In June 2008, Bhupinder Singh Anand proved that P is not equal to NP ([pdf-file](http://alixcomsi.com/18_A_trivial_solution_to_PvNP.pdf)). In this paper _"A trivial solution to the PvNP problem"_ Anand shows that Goedel has defined an arithmetical tautology R(n) which - when treated as a Boolean function - is constructively computable as true for any given natural number n, but which is not Turing-computable as true for any given natural number n. This then implies that P is not equal to NP.

45. **[Equal]:** In June 2008, Rafee Ebrahim Kamouna proved that P and NP coincide. His proof first establishes (in contradiction to Cook's theorem) that SAT is in fact not NP-complete, then observes that there are no NP-complete problems, and finally deduces P=NP from this. The paper_"The Kleene-Rosser Paradox, The Liar's Paradox & A Fuzzy Logic Programming Paradox Imply SAT is (NOT) NP-complete"_is available at[http://arxiv.org/abs/0806.2947](http://arxiv.org/abs/0806.2947).
Additional information on this approach can be found at[http://kamouna.wordpress.com](http://kamouna.wordpress.com).
(Thanks to Ronald Ortner for providing this link.)

46. **[Not equal]:** In August 2008, Jerrald Meek proved that some NP-complete problems in fact are not really NP-complete. Of course this implies that P is not equal to NP. His paper _"Analysis of the postulates produced by Karp's Theorem"_is the final article in a series of four articles. It is available at[http://arxiv.org/abs/0808.3222](http://arxiv.org/abs/0808.3222).
(Thanks to David Eppstein for providing this link.)

47. **[Not equal]:** In September 2008, Jorma Jormakka proved that P is not equal to NP by showing that the subset sum problem cannot be solved in polynomial time. His paper _"On the existence of polynomial-time algorithms to the subset sum problem"_is available at[http://arxiv.org/abs/0809.4935](http://arxiv.org/abs/0809.4935).

48. **[Not equal]:** In October 2008, Sten-Ake Tarnlund established that P is not equal to NP. He shows that the statement "SAT is not in P" is true and provable in a simply consistent extension B' of a first order theory B of computing, with a single finite axiom characterizing a universal Turing machine. His paper _"P is not equal to NP"_is available at[http://arxiv.org/abs/0810.5056](http://arxiv.org/abs/0810.5056).
Henning Makholm comments on Tarnlund's arguments in his[blog](http://blog.henning.makholm.net/2008/11/does-p-equal-np-this-is-not-answer.html).
In September 2013, Sten-Ake Tarnlund announced an improved version of his argument. His proofs are informal about formal proofs in a first-order theory B axiomatizing Turing's theory of computing. However, the informal proofs can be converted into formal proofs in Hilbert's proof theory, and proved using a theorem prover. The improved version is available at[[pdf]](http://uu.diva-portal.org/smash/get/diva2:651748/FULLTEXT01.pdf).
(Thanks to Chris Hodges for providing the link to Tarnlund's first paper, and thanks to Thore Husfeldt for providing the link to Makholm.)

49. **[Equal]:** In November 2008, Zohreh O. Akbari proved that P is equal to NP. Her paper _"A Deterministic Polynomial-time Algorithm for the Clique Problem and the Equality of P and NP Complexity Classes"_ appeared in Volume 35 of the _"Proceedings of World Academy of Science, Engineering and Technology"_, and is available at[http://www.waset.org/pwaset/v35/v35-74.pdf](http://www.waset.org/pwaset/v35/v35-74.pdf). Akbari designs a deterministic polynomial time algorithm for the NP-hard clique problem.
In 2013, an updated version of the paper was presented at the 2013 IEEE/ACIS 12th International Conference on Computer and Information Science (ICIS), under the title_"A polynomial-time algorithm for the maximum clique problem"_. The paper is available at[IEEExplore](http://ieeexplore.ieee.org/xpl/login.jsp?tp=&arnumber=6607889).
(Thanks to Andrew Fabbro and Austin Buchana for providing these links.)

50. **[Equal]:** In December 2008, Javaid Aslam proved that P is equal to NP. His paper _"The Collapse of the Polynomial Hierarchy: NP=P"_is available at[http://arxiv.org/abs/0812.1385](http://arxiv.org/abs/0812.1385). Aslam proves that counting of Hamiltonian Circuits in a given graph is in NC, and that the Polynomial Hierarchy collapses.
Follow-ups: The paper ["Refutation of Aslam's Proof that NP = P"](http://arxiv.org/abs/0904.3912)by Frank Ferraro, Garrett Hall, Andrew Wood points out a flaw in the above paper. Javaid Aslam's reaction to this refutation is available as["Response to Refutation of Aslam's Proof that NP = P"](http://arxiv.org/abs/0906.5112).
(Thanks to Lane A. Hemaspaandra for providing some of these links.)

51. **[Equal]:** In March 2009, Rafael Valls Hidalgo-Gato published an ICIMAF technical report called _"P=NP"_, with ISSN 0138-8916. ICIMAF is the Institute of Cybernetics, Mathematics and Physics in Cuba, and belongs to CITMA (the Cuban Ministry of Science, Technology and Ambient Medium).

This report was announced in March 2009 in the usenet newsgroup _comp.theory_, but without providing any link to an electronic version. The author also mentions that he actually has already resolved the P versus NP problem in October 1985. The result was published in the proceedings of the ININTEF (Institute of Fundamental Technical Research, Cuban Academy of Science) Scientific Conference that took place around that time at Capitol (Havana, Cuba). The paper is _"Método de solución para sistemas de ecuaciones simultáneas sobre un Campo de Galois y aplicaciones en Inteligencia Artificial"_ (Solution method for systems of simultaneous equations over a Galois Field and Artificial Intelligence applications), 1985 Annual Report, Vol.II, S2-25, p.274, Cuban Academy of Science Edition. As part of that paper, a polynomial-time algorithm is given that resolves an NP-complete problem.

52. **[Equal]:** On the 1st of April 2009, Doron Zeilberger proved that P is equal to NP. He provided a polynomial time algorithm for the Subset Sum problem. Zeilberger translates the problem into evaluating an underlying integral. He writes:_"Using rigorous interval analysis, rather than non-rigorous floatingpoint computations, we can estimate the integral, as well as bound the error, thereby solving the problem in 'polynomial' time. The rigorous estimate of the error (crucial to the success of the decision algorithm), involves solving more than ten thousand Linear Programming problems, each with more than one hundred thousand variables. This system was generated automatically and dynamically, using a genetic algorithm and simulated annealing, as well as sophisticated Markov Chains and Bayesian analysis. Of course, we do not guarantee that this is the shortest possible proof, since it was generated by a non-determinstic Turing machine, but it is indeed a fully rigorous proof. The validity of the proof was independently checked by four other computers, running on different platforms and different programming languages."_
The paper can be found at[http://www.math.rutgers.edu/~zeilberg/mamarim/mamarimPDF/pnp.pdf](http://www.math.rutgers.edu/~zeilberg/mamarim/mamarimPDF/pnp.pdf).
At the end of April 2009, Doron Zeilberger wrote me:_[...] However, you should add that this was meant as an April Fool's Joke, since apparently, some people didn't get that it was meant as a joke, and while the paper has some valid general statements abouts humans, the "proof" itself is complete gibberish (and of course, intentionally so)._
(Thanks to Fred Wehrung for providing this link.)

53. **[Equal]:** In April 2009, Xinwen Jiang published a proof for P is equal to NP. He provided an algorithm for the Hamilton circuit problem, and states _"It seems our algorithm is a polynomial one"._The paper can be found at[http://xinwenjiang.googlepages.com/](http://xinwenjiang.googlepages.com/). An earlier version of his paper was published in a Chinese journal in 2007.
Further versions have been published in 2010 and 2011. More information on the current version of the proof is available at[http://trytoprovenpvsp.blog.sohu.com/entry/](http://trytoprovenpvsp.blog.sohu.com/entry/).
Since May 2013, the paper _"A Polynomial Time Algorithm for the Hamilton Circuit Problem"_ is available at[http://arxiv.org/abs/1305.5976](http://arxiv.org/abs/1305.5976).
(Thanks to Maris Ozols for providing some of these links.)

54. **[Not equal]:** In June 2009, Arto Annila proved that P is not equal to NP. He writes:_The state space of a non-deterministic finite automaton is evolving due to the computation itself hence it cannot be efficiently contracted using a deterministic finite automaton that will arrive at a solution in super-polynomial time. The solution of the NP problem itself is verifiable in polynomial time (P) because the corresponding state is stationary. Likewise the class P set of states does not depend on computational history hence it can be efficiently contracted to the accepting state by a deterministic sequence of dissipative transformations. Thus it is concluded that the class P set of states is inherently smaller than the set of class NP._
Annila's paper _"Physical portrayal of computational complexity"_is available at[http://arxiv.org/abs/0906.1084](http://arxiv.org/abs/0906.1084). The paper has also been published in the journal _ISRN Computational Mathematics_ 2012 ID: 321372, 1-15, and is available at[http://www.isrn.com/journals/cm/2012/321372/](http://www.isrn.com/journals/cm/2012/321372/).
(Thanks to Matti Niemenmaa for providing some of these links.)

55. **[Not equal]:** In July 2009, Andre Luiz Barbosa established that P is not equal to NP. He constructed an artificial problem XG-SAT, and demonstrated that it is in NP but not in P. The paper _"P != NP Proof"_is available at[http://arxiv.org/abs/0907.3965](http://arxiv.org/abs/0907.3965).
In June 2011, Lane Hemaspaandra, Kyle Murray and Xiaoqing Tang analyzed and criticized Barbosa's results. They point out some unclear/fuzzy parts and conclude that it is exceedingly unlikely that Barbosa's proof can be fixed any time soon. Their note _"Barbosa, Uniform Polynomial Time Bounds, and Promises"_ is available at[http://arxiv.org/abs/1106.1150](http://arxiv.org/abs/1106.1150).
(Thanks to Florian Sikora for providing the link to Barbosa's paper.)

56. **[Equal]:** In September 2009, Yann Dujardin proved that P and NP coincide. The main result is a polynomial time algorithm for the NP-hard PARTITION problem. The paper _"Résolution du partition problem par une approche arithmétique"_(written in French) is available at[http://arxiv.org/abs/0909.3466](http://arxiv.org/abs/0909.3466).
(Thanks to Dirk Gerrits for providing this link.)

57. **[Equal]:** In September 2009, Luigi Salemi established that P is equal NP. He considers 3SAT with n variables, and designs an algorithm with a polynomial running time of O(n^11). His paper _"Method of resolution of 3SAT in polynomial time"_is available at[http://arxiv.org/abs/0909.3868](http://arxiv.org/abs/0909.3868).
Some additional information (and a pdf-file explaining the spirit of the proof) is available at the author's page[http://www.visainformatica.it/3sat](http://www.visainformatica.it/3sat).
(Thanks to Dirk Gerrits for providing this link.)

58. **[Not equal]:** In December 2009, Ari Blinder proved that P is not equal to NP. He proves that there exists a language that is contained in NP, but not in co-NP. This yields that NP is not equal co-NP, and of course implies that P is not equal to NP. His paper _"A Possible New Approach to Resolving Open Problems in Computer Science"_is available at[http://sites.google.com/site/ariblindercswork/](http://sites.google.com/site/ariblindercswork/).
On 10-March-2010, Ari Blinder announced that he has found a hole in his proof.

59. **[Equal]:** In 2009, Narendra S. Chaudhari designed a constructive procedure for solving the 3-SAT problem in polynomial time O(n^13). The main trick lies in the representation that allows Chaudhari to cast the 3-SAT problem in terms of the CLAUSES and not the literals. The complexity is fundamentally different because the mapping from literals to clauses is exponential while from clauses to 3-SAT is linear. The paper _"Computationally Difficult Problems: Some Investigations"_has appeared in the Journal of the Indian Academy of Mathematics Vol 31, 2009, 407-444. A copy is available [here](http://dcis.uohyd.ernet.in/~wankarcs/index_files/pdf/Vol-31-No-2-2009-pp407-444-scanned-copy.pdf).
(Thanks to Ryan Williams for providing this link.)

60. **[Equal]:** In April 2010, Lizhi Du proved that P=NP by constructing a polynomial time algorithm for finding a Hamilton Cycle in an undirected graph. The paper describes the algorithm, its proof, and the experimental data. It is called _"A Polynomial Time Algorithm for Hamilton Cycle and Its Proof"_, and it is available at[http://arxiv.org/abs/1004.3702](http://arxiv.org/abs/1004.3702).
(Thanks to Dirk Gerrits for providing this link.)

61. **[Equal]:** In May 2010, Changlin Wan proved that P=NP. The central idea of the proof is a recursive definition for Turing machine (shortly TM). The paper is called _"A Proof for P vs. NP Problem"_, and is available at[http://arxiv.org/abs/1005.3010](http://arxiv.org/abs/1005.3010).
(Thanks to Dirk Gerrits and Florian Sikora for providing this link.)

62. **[Not equal]:** In June 2010, Carlos Barron-Romero established P not equal to NP. His paper _"The Complexity Of The NP-Class"_ presents a novel and straight formulation, and gives a complete insight towards the understanding of the complexity of the problems of the so called NP-Class. The paper is available at[http://arxiv.org/abs/1006.2218](http://arxiv.org/abs/1006.2218).
(Thanks to Jean Baylon and Dirk Gerrits for providing this link.)

63. **[Equal]:** In June 2010, Han Xiao Wen proved that P=NP. His paper _"Mirrored Language Structure and Innate Logic of the Human Brain as a Computable Model of the Oracle Turing Machine"_suggests an algorithm of relation learning and recognition (RLR) that enables the deterministic computers to simulate the mechanism of the Oracle Turing machine, or P=NP in a mathematical term. This paper is available at[http://arxiv.org/abs/1006.2495](http://arxiv.org/abs/1006.2495).
In September 2010, Han Xiao Wen provided another proof that P=NP in the paper _"Knowledge Recognition Algorithm enables P = NP"_. The paper is available at[http://arxiv.org/abs/1009.0884](http://arxiv.org/abs/1009.0884).
(Thanks to Juraj Burian for providing some of these links.)

64. **[Equal]:** In July 2010, Mikhail Katkov established P=NP. His paper _"Polynomial complexity algorithm for Max-Cut problem"_ formulates the NP-hard Max-Cut problem as a semi-definite program. The paper is available at[http://arxiv.org/abs/1007.4257](http://arxiv.org/abs/1007.4257v2).
Additional information on this approach can be found at[http://mkatkov.wordpress.com](http://mkatkov.wordpress.com).
(Thanks to Dirk Gerrits and Michael Thomas for providing this link.)

65. **[Not equal]:** In the beginning of August 2010, Vinay Deolalikar announced a proof that P is not equal to NP.
He writes:_"The proof required the piecing together of principles from multiple areas within mathematics. The major effort in constructing this proof was uncovering a chain of conceptual links between various fields and viewing them through a common lens. Second to this were the technical hurdles faced at each stage in the proof. This work builds upon fundamental contributions many esteemed researchers have made to their fields. In the presentation of this paper, it was my intention to provide the reader with an understanding of the global framework for this proof. Technical and computational details within chapters were minimized as much as possible."_
The first version of the paper _"P!=NP"_ had 66 pages, and is available as[pdf-file](P-versus-NP/Deolalikar.pdf).
Lots of useful discussions on this proof:[http://rjlipton.wordpress.com/](http://rjlipton.wordpress.com/)

66. **[Equal]:** In August 2010, Sergey Gubin proved that the ATSP (Asymmetric Travelling Salesman Polytope) can be expressed by an asymmetric linear program of polynomial size. This implies P=NP. His paper _"Complementary to Yannakakis' theorem"_ has been published in Volume 74 of _The Journal of Combinatorial Mathematics and Combinatorial Computing_ on pages 313-321.
And here is a [refutation](P-versus-NP/review-rizzi.pdf)of Gubin's arguments by Romeo Rizzi from January 2011.

67. **[Equal]:** In November 2010, Vladimir Romanov proved P=NP. His paper _"Non-Orthodox Combinatorial Models Based on Discordant Structures"_introduces a novel method for compact representation of sets of n-dimensional binary sequences in a form of compact triplets structures (CTS), supposing both logic and arithmetic interpretations of data. It is available at[http://arxiv.org/abs/1011.3944](http://arxiv.org/abs/1011.3944).
Additional information can be found at[http://romvf.wordpress.com/2011/01/19/open-letter/](http://romvf.wordpress.com/2011/01/19/open-letter/).
(Thanks to Dirk Gerrits for providing this link.)

68. **[Not equal]:** In November 2010, Frank Vega Delgado proved that P is not equal to NP, by investigating an algorithmic problem called CERTIFYING. On the one hand, CERTIFYING lies in NP. On the other hand, if CERTIFYING would belong to P then NP would also contain some undecidable problem (which is impossible). The paper _"A Solution to the P versus NP Problem"_ is available at[http://arxiv.org/abs/1011.2730](http://arxiv.org/abs/1011.2730).
(Thanks to Florian Sikora for providing this link.)

69. **[Not equal]:** In December 2010, Carlos Barron-Romero established that P is not equal to NP. His paper _"The Complexity of Euclidian 2 Dimension Travelling Salesman Problem versus General Assign Problem, NP is not P"_ focuses on the Euclidian 2-dimensional Travelling Salesman Problem and the General Assignment Problem, and presents the differences between these two NP problems. The paper is available at[http://arxiv.org/abs/1101.0160](http://arxiv.org/abs/1101.0160).
(Thanks to Mathieu Chapelle for providing this link.)

70. **[Not equal]:** In December 2010, Bangyan Wen and Yi Lin proved that P is not equal to NP. Their paper _"THE ANSWER TO THE P/NP PROBLEM IS P≠NP!_ settles the question by using formal logic reasoning and analysis. The paper was published in the electronic journal_"Scientific Inquiry - A Journal of the IIGSS"_ (International Institute for General System Studies), and it is available from [http://www.iigss.net/Scientific-Inquiry/Dec2010/table.htm](http://www.iigss.net/Scientific-Inquiry/Dec2010/table.htm).
(Thanks to Jeffrey Forrest for providing this link.)

71. **[Not equal]:** In January 2011, Ruijia Liao established that P is not equal to NP, by using algorithms and pseudo-algorithms. His paper _"The Complexity of 3SAT\_N and the P versus NP Problem"_ is available at[http://arxiv.org/abs/1101.2018](http://arxiv.org/abs/1101.2018).
(Thanks to Guillaume Aupy for providing this link.)

72. **[Equal]** and **[Not equal]:** In April 2011, Stefan Jaeger proved that P equals NP (under the first Peano axiom) and that P is not equal to NP (without the first Peano axiom). The paper _"Computational Complexity on Signed Numbers"_ presents a new representation of natural numbers and discusses its consequences for computability and computational complexity. It is available at[http://arxiv.org/abs/1104.2538](http://arxiv.org/abs/1104.2538).

73. **[Equal]:** In April 2011, Amar Mukherjee proved that P equals NP, by presenting a deterministic polynomial-time algorithm for the 3-satisfiability problem. The paper _"The 3-satisfiability problem"_ is available at[http://arxiv.org/abs/1104.4490](http://arxiv.org/abs/1104.4490).
(Thanks to Florian Sikora for providing this link.)

74. **[Equal]:** In spring 2011, Angela Weiss established P=NP by presenting a polynomial-time algorithm for the 3-satisfiability problem. The approach uses classical KE-tableaux methods to built a macro that stores the relevant data (all closed branches) for a tableau for a given 3-sat formula. The paper _"A Polynomial Algorithm for 3-sat"_ is available from[http://www.ime.usp.br/~weiss/](http://www.ime.usp.br/~weiss/). This page also contains a discussion group on that proof.

75. **[Equal]:** In June 2011, Matt Groff established P=NP through an O(n^7) time algorithm for the satisfiability problem. The paper _"Towards P = NP via k-SAT: A k-SAT Algorithm Using Linear Algebra on Finite Fields"_ is available at[http://arxiv.org/abs/1106.0683](http://arxiv.org/abs/1106.0683).
(Thanks to Serguei Mokhov and Arne Meier for providing this link.)

76. **[Equal]:** In July 2011, Sergey Kardash proved P=NP by designing an O(n^12) time algorithm for 3-SAT. His paper _"Algorithmic complexity of pair cleaning method for k-satisfiability problem"_is available at[http://arxiv.org/abs/1108.0408](http://arxiv.org/abs/1108.0408).
(Thanks to Hongyu Liang for providing this link.)

77. **[Not equal]:** In September/October 2011, Anatoly Plotnikov proved that P is not equal to NP.
The paper _"On the relationship between classes P and NP"_ constructs a class UF that contains P, and that simultaneously is strictly contained in NP; the proof is available at[http://arxiv.org/abs/1109.5531](http://arxiv.org/abs/1109.5531). His papers _"About set-theoretic properties of one-way functions"_ (available at [http://arxiv.org/abs/1110.3189](http://arxiv.org/abs/1110.3189)) and _"On the structure of the class NP"_ (available at [http://arxiv.org/abs/1304.1307](http://arxiv.org/abs/1304.1307)) provide further analysis of this class UF.
(Thanks to Igor Razgon and Florian Sikora for providing these links.)

78. **[Not equal]:** In October 2011, Koji Kobayashi showed that P is not equal to NP, by building the language CHAOS in NP\AL. The paper _"NP is not AL and P is not NC is not NL is not L"_ is available at[http://arxiv.org/abs/1110.0200](http://arxiv.org/abs/1110.0200).
(Thanks to Jean-Marie Madiot for providing this link.)

79. **[Equal]:** In October 2011, Jason W. Steinmetz established P=NP. His paper _"Algorithm that Solves 3-SAT in Polynomial Time"_presents a polynomial time solution for the NP-hard 3-SAT problem. It is available at[http://arxiv.org/abs/1110.1658](http://arxiv.org/abs/1110.1658).
(Thanks to Bertrand Collet, Anthony Labarre and Florian Sikora for providing this link.)

80. **[Equal]:** In October 2011, Jose Ignacio Alvarez-Hamelin proved P equals NP. He presents an efficient algorithm for computing a maximum clique in general graphs. His paper _"Is it possible to find the maximum clique in general graphs?"_ is available at[http://arxiv.org/abs/1110.5355](http://arxiv.org/abs/1110.5355).
(Thanks to Dirk Gerrits for providing this link.)

81. **[Not equal]:** In November 2011, Roman Yampolskiy proved that P is not equal to NP, by constructing a variant of the Travelling Salesman Problem (the so-called Hashed-Path Traveling Salesperson Problem, HPTSP). Yampolskiy shows that HPTSP has the interesting property of having no polynomial time solution. Furthermore he shows that HPTSP is in the class NP by demonstrating that local information about sub-routes is insufficient to compute the complete value of each route.
The paper _"Construction of an NP Problem with an Exponential Lower Bound"_ is available at[http://arxiv.org/abs/1111.0305](http://arxiv.org/abs/1111.0305).
(Thanks to Arne Meier for providing this link.)

82. **[Not equal]:** In November 2011, Craig Alan Feinstein proved that P is not equal to NP. The argument is surprisingly short. It essentially shows that the Traveling Salesman Problem cannot be solved in polynomial-time on a classical computer.
The paper _"The Computational Complexity of the Traveling Salesman Problem"_ is available at[http://arxiv.org/abs/cs/0611082](http://arxiv.org/abs/cs/0611082).
(Thanks to Joshua Lockhart and Mathieu Chapelle for providing this link.)

83. **[Not equal]:** In fall 2011, Jeffrey W. Holcomb established P!=NP. The website [http://www.holcombtechnologies.com](http://www.holcombtechnologies.com) contains a sequence of papers that together establish P!=NP. The paper ["Just How Random Are Your Answers?"](http://www.holcombtechnologies.com/Papers/Just%20How%20Random%20are%20Your%20Answers.pdf)seems to be a particularly important one. The proof relies upon the existence of stochastic answers in the set difference between NP and P.
(Thanks to Peter Bro Miltersen for providing these links.)

84. **[Equal]:** In January 2012, Douglas Youvan established P=NP in a certain model (that seems to allow time travelling). The Kindle edition of his book_"As Velocity Approaches Light Speed, P Becomes Equivalent to NP for Computations Using Zero-Mass Particles"_is available for sale at[amazon.com](http://www.amazon.com/Approaches-Equivalent-Computations-Zero-Mass-ebook/dp/B006SA3KIA/ref=zg_bs_158742011_29).
(Thanks to Gabriel Istrate for providing this link.)

85. **[Not equal]:** In January 2012, Gilberto Rodrigo Diduch proved that P is not equal to NP. His paper ["P vs NP"](http://paper.ijcsns.org/07_book/201201/20120124.pdf) states that the answer to the P vs NP question is a categorical NO; these classes are different as their names suggest.
Diduch's paper has been published in the International Journal of Computer Science and Network Security ([IJCSNS](http://ijcsns.org/)), Volume 12, pages 165-167.
(Thanks to Gordon Royle for providing the link.)

86. **[Not equal]:** In February 2012, Koji Kobayashi proved that P is not equal to NP. His paper _"Topological approach to solve P versus NP"_ shows that there are some CNF formulas that cannot be reduced to HornCNF formulas of polynomial size. It is available at[http://arxiv.org/abs/1202.1194](http://arxiv.org/abs/1202.1194).

87. **[Not equal]:** In February 2012, Frank Vega Delgado proved that P is not equal to NP. He starts from the assumption P=UP, and shows that this leads to EXP=P (which is known to be wrong from the time hierarchy theorem); this contradiction implies that P is not equal to UP (which forms a subclass of NP). His paper _"The existence of one-way functions"_ is available at[http://the-point-of-view-of-frank.blogspot.com/](http://the-point-of-view-of-frank.blogspot.com/).
A variant of the proof appeared under the title _"P versus UP"_ in the [IEEE Latin America Transactions](http://ieeexplore.ieee.org/xpl/RecentIssue.jsp?punumber=9907); see this[link](http://ieeexplore.ieee.org/xpl/articleDetails.jsp?tp=&arnumber=6272487&contentType=Journals+%26+Magazines&sortType%3Dasc_p_Sequence%26filter%3DAND%28p_IS_Number%3A6272465%29).
Yet another variant of the paper _"P versus UP"_ was submitted to the arXiv under the pseudonym Asia Furones. The paper at [http://arxiv.org/abs/1205.3655](http://arxiv.org/abs/1205.3655)has been withdrawn by arxiv admin, due to use of pseudonym by frank.vega@datys.cu against arXiv policy. Some older versions can still be accessed at [http://arxiv.org/abs/1205.3655v4](http://arxiv.org/abs/1205.3655v4)
(Thanks to Iris Delgado, Juraj Burian and Thomas Klimpel for providing some of these links.)

88. **[Not equal]:** In March 2012, Minseong Kim showed that the Zermelo-Fraenkel axioms of set theory together with the axiom of choice are inconsistent, and then deduced from this that P is not equal to NP. The paper_"Inconsistency of the Zermelo-Fraenkel set theory with the axiom of choice and its effects on the computational complexity"_ is available at[http://arxiv.org/abs/1203.0494](http://arxiv.org/abs/1203.0494).
(Thanks to Gabriel Istrate for providing this link.)

89. **[Equal]:** In March 2011, Algirdas Antano Maknickas proved that P=NP. His paper _"How to solve kSAT in polynomial time"_uses multi-nary logic analytic formulas in modulo form to derive a polynomial time problem for the NP-hard k-Satisfiability problem. The conclusions of the paper are that every mathematical problem is solvable in polynomial time if exist full, appropriate and correct knowledge basis for it and the time to get each item of knowledge basis is match less than calculation time on this items. The paper is available at[http://arxiv.org/abs/1203.6020](http://arxiv.org/abs/1203.6020).
(Thanks to Juraj Burian for providing this link.)

90. **[Equal]:** In May 2012, Michel Feldmann established P=NP. His paper _"From classical versus quantum algorithms to P versus NP"_reduces 3-SAT to a linear programming problem, while introducing Bayesian probability theory in classical computation. According to algorithmic complexity theory this proves that P=NP. The paper is available at[http://arxiv.org/abs/1205.6658](http://arxiv.org/abs/1205.6658).
(Thanks to Anthony Leverrier, Grégory Strubi and Javaid Aslam for providing this link.)

91. **[Not equal]:** In summer 2012, Junichiro Fukuyama from the Toyota InfoTechnology Center proved that P is not equal to NP. The proof explores topological properties of a Hamming space, generalizes the sunflower lemma, and builds on circuit theory. The paper _"Computing Cliques is Intractable"_ is available at[https://junfukuyama.wordpress.com/](https://junfukuyama.wordpress.com/).
In May 2013, the author made his proof also available on the ArXive, at[http://arxiv.org/abs/1305.3218](http://arxiv.org/abs/1305.3218).
(Thanks to Uri Segal and Maris Ozols for providing these links.)

92. **[Not equal]:** In July 2012, Satoshi Tazawa proved that P is not equal to NP. The proof establishes that the decision problem version of integer factorization problem is neither in P nor NP-complete. From this result, the conclusion that P is not NP is reached. The paper _"Integer factorization and Discrete Logarithm problem are neither in P nor NP-complete"_ is available at[http://arxiv.org/abs/1207.2171](http://arxiv.org/abs/1207.2171).
Later versions of this paper carry the title _"Relationship between circuit complexity and symmetry"_. The paper shows that by interpreting a Boolean circuit as a graph, the small number of graph automorphisms and the large number of subgraph automorphisms in the circuit establishes the exponential circuit lower bound for NP-complete problems. As this strategy violates the largeness condition in Natural proof, this result shows that P!=NP without any contradictions to the existence of pseudorandom functions.
(Thanks to Adam Scherlis for providing these links.)

93. **[Equal]:** In July 2012, Wen-Qi Duan proved that P=NP. His paper _"A Constructive Algorithm to Prove P=NP"_first reduces the undirected Hamiltonian cycle problem into the TSP problem with cost 0 or 1, and then develops an effective algorithm to compute the optimal tour of the transformed TSP. This yields a polynomial time algorithm for the undirected Hamiltonian cycle problem, and established P=NP. The paper is available at[http://arxiv.org/abs/1208.0542](http://arxiv.org/abs/1208.0542).

94. **[Equal]:** In September 2012, Sergey V. Yakhontov proved that P=NP. The proof is constructive, and explicitly gives a polynomial time deterministic algorithm that determines whether there exists a polynomial-length accepting computational path for a given non-deterministic single-tape Turing machine. The paper is available at[http://arxiv.org/abs/1208.0954](http://arxiv.org/abs/1208.0954).
(Thanks to Ricardo Mota Gomes for providing this link.)

95. **[Unprovable]:** In November 2012, Natalia L. Malinina put the paper _"On the principal impossibility to prove P=NP"_onto the arxive, at [http://arxiv.org/abs/1211.3492](http://arxiv.org/abs/1211.3492). On page 19, she writes: _"Summarizing all that was said, it can be concluded that such dividing of the graphs into three classes and the behavior of the complicated vertexes at the converting (they turn into the independent cycles) gives us the infallible fact that it is impossible to prove that P=NP."_
(Thanks to Freek van Walderveen for providing this link.)

96. **[Equal]:** In December 2012, Louis Coder proved that P=NP. The proof designs an algorithm that determines the solvability state (solvable or unsatisfiable) of any exact-3-SAT formula in polynomial time. The paper _Polynomial Exact-3-SAT Solving Algorithm_ is available as pdf on [http://vixra.org/abs/1212.0109](http://vixra.org/abs/1212.0109). In December 2013, Louis Coder designed a new version of his algorithm. The paper _"Polynomial SAT-Solver - Algorithm Explanation"_ is available as pdf on vixra.org as well.

97. **[Equal]:** In January 2013, Dmitriy Nuriyev established P=NP. His paper _"A DP Approach to Hamiltonian Path Problem"_ designs a polynomial worst case time Dynamic Programming algorithm for computing a Hamiltonian Path in a directed graph. The result is obtained via the use of original colored hypergraph structures in order to maintain and update the necessary DP states. The running time of the resulting algorithm is O(n^8) where n denotes the number of vertices in the directed graph. The paper is available at[http://arxiv.org/abs/1301.3093](http://arxiv.org/abs/1301.3093).
(Thanks to Florian Sikora for providing this link.)

98. **[Equal]:** In March 2013, the International Conference on Advances in Engineering Technologies and Physical Science was held in Hong Kong. The proceedings of this conference have been published by the respected publishing house _Springer Science_, and contain the paper _Linear Programming Formulation of Boolean Satisfiability Problem_ by Algirdas Antano Maknickas. Maknickas translates the (NP-hard) satisfiability problem into a (polynomially solvable) linear programming problem. This of course implies P=NP. The paper is available at[http://link.springer.com/chapter/10.1007/978-94-007-7684-5\_22/](http://link.springer.com/chapter/10.1007/978-94-007-7684-5_22).
(Thanks to Ruben Ruiz Torrubiano for providing this link.)

99. **[Not equal]:** In August 2013, Rustem Chingizovich Valeyev established that P is not equal to NP. The proof shows that the most effective algorithm for the TSP is exhaustive search, and hence an exponential time algorithm; this of course implies that P is not equal to NP. The paper _"The Lower Border of Complexity of Algorithm of the Elementary NP-Complete Task (The Most Condensed Version)"_has been published in Volume 8 of the [World Applied Sciences Journal](http://www.idosi.org/wasj/wasj24%288%292013.htm) and is available as[pdf](http://www.idosi.org/wasj/wasj24(8)13/16.pdf).

100. **[Equal]:** In October 2013, Frederic Gillet showed that P=NP. He shows how the implementation of conservative logic gates on flow networks allows us to solve 3SAT and 3-dimensional matching problems in polynomial time by using standard minimum-cost flow methods. The paper _"Solving 3-SAT and 3-dimensional matching in polynomial time"_is available at[http://arxiv.org/abs/1310.1971](http://arxiv.org/abs/1310.1971).

Addendum. In November 2013, the author added the following comment to the arxive page: The proposed method does not work. Updated the article with an analysis of why the general method suggested cannot work. Will withdraw the paper once this updated version is loaded.

101. **[Equal]:** In January 2014, Hanlin Liu established P=NP by constructing a polynomial time algorithm for the Hamiltonian circuit problem in a graph G=(V,E); the algorithm has a time complexity of O(|V|^9). The paper _"A Algorithm for the Hamilton Circuit Problem"_ is available at[http://arxiv.org/abs/1401.6423](http://arxiv.org/abs/1401.6423).

102. **[Equal]:** In February 2014, Pawan Tamta, B.P. Pande and H.S. Dhami proved P=NP by constructing a polynomial time algorithm for the clique problem. They show that the Clique Problem has a reduction to the Maximum Flow Network Interdiction Problem, and they review the reduction to evolve a polynomial time algorithm for the clique problem. The paper _"A Polynomial Time Solution to the Clique Problem"_ is available at[http://arxiv.org/abs/1403.1178](http://arxiv.org/abs/1403.1178).
In April 2015, Hector A. Cardenas, Chester Holtz, Maria Janczak, Philip Meyers, Nathaniel S. Potrepka published a refutation of this approach. Their paper _"A Refutation of the Clique-Based P=NP Proofs of LaPlante and Tamta-Pande-Dhami"_is available at[http://arxiv.org/abs/1504.06890](http://arxiv.org/abs/1504.06890).
(Thanks to Florian Sikora, Lane Hemaspaandra, and Kirk Pruhs for providing some of these links.)

103. **[Equal]:** In February 2014, Peng Cui proved P=NP. The main ingredients of the paper include a key issue in dictator test that disguises the questions of the verifier to a balanced pairwise independent distribution and a variance-style theorem to eliminate correlation of answers of all players based on Label-Cover and its reflection version, which does not rely on the technique of direct sum that requires the subgroup property. On the other hand, the author shows that the gap problem of this type of k-CSP can be solved by a SDP algorithm in polynomial time efficiently, when the support of C is combined by the grounds of three truncated biased pairwise independent distributions and the three biases satisfy certain conditions.
The paper _"Approximation Resistance by Disguising Biased Distributions_ is available at[http://arxiv.org/abs/1401.6520](http://arxiv.org/abs/1401.6520).

104. **[Not equal]:** In February 2014, Daegene Song established that P is not equal to NP. The main idea is to consider P (respectively NP) as a class of deterministic (respectively nondeterministic) polynomial-time physical processes, and to exhibit a physical process in quantum theory which belongs to NP but cannot be contained in P. The paper _"The P versus NP Problem in Quantum Physics"_ is available at[http://arxiv.org/abs/1402.6970](http://arxiv.org/abs/1402.6970).

105. **[Not equal]:** In March 2014, Joonmo Kim proved that P is not equal to NP. The proof uses an artificially designed Turing Machine that generates the instances of the satisfiability problem, and checks their satisfiability. Under the assumption P equal NP, this machine has a certain property, which it does not have without the assumption. This leads to P not equal NP, by modus tollens. The paper _"P not equal NP by modus tollens"_ is available at[http://arxiv.org/abs/1403.4143](http://arxiv.org/abs/1403.4143).
In April 2014, Dan Hassin, Adam Scrivener and Yibo Zhou note that the logic that Kim uses is inconsistent and provide evidence that the proof is invalid. Their findings are available at[http://arxiv.org/abs/1404.5352](http://arxiv.org/abs/1404.5352).
(Thanks to Szabolcs Ivan for providing these links.)

106. **[Equal]:** In September 2014, Anatoly Panyukov proved P=NP by constructing a polynomial time algorithm for the Hamiltonian circuit problem. The paper _"Polynomial solvability of NP-complete problems"_ is available at[http://arxiv.org/abs/1409.0375](http://arxiv.org/abs/1409.0375).
(Thanks to Falk Hüffner and Florian Sikora for providing this link.)

107. **[Equal]:** In March 2015, nclude <string.h>
Michael LaPlante established P=NP by constructing a polynomial time algorithm for the maximum clique problem in a graph. The paper _"A Polynomial Time Algorithm For Solving Clique Problems"_ is available at[http://arxiv.org/abs/1503.04794](http://arxiv.org/abs/1503.04794).
In April 2015, Hector A. Cardenas, Chester Holtz, Maria Janczak, Philip Meyers, Nathaniel S. Potrepka published a refutation of this approach. Their paper _"A Refutation of the Clique-Based P=NP Proofs of LaPlante and Tamta-Pande-Dhami"_is available at[http://arxiv.org/abs/1504.06890](http://arxiv.org/abs/1504.06890).
(Thanks to Santanu Bhowmick, Adam Kurpisz, Florian Sikora, Lane Hemaspaandra, and Kirk Pruhs and several others for providing these links.)

108. **[Equal]:** In April 2015, Alejandro Sanchez Guinea established P=NP by designing an algorithm which takes a logical formula in conjunctive normal form, terminates successfully iff the formula is satisfiable, and runs in polynomial time. This implies P=NP. The paper _"Understanding SAT is in P"_is available at[http://arxiv.org/abs/1504.00337](http://arxiv.org/abs/1504.00337).
(Thanks to Szabolcs Ivan for providing these links.)

109. **[Equal]:** In June 2015, Frank Vega introduced a new complexity class (called _equivalent-P_), which has a close relation to the P-versus-NP question. The class equivalent-P has those languages that contain ordered pairs of instances, where each one belongs to a specific problem in P, such that the two instances share a same solution, that is, the same certificate. Vega then demonstrates that (i) equivalent-P = NP and (ii) equivalent-P = P. These two statements clearly imply P=NP. The paper _"Solution of P versus NP Problem"_is available at[https://hal.archives-ouvertes.fr/hal-01161668](https://hal.archives-ouvertes.fr/hal-01161668).

110. **[Equal]:** In October 2015, Yubin Huang proved the following: For any language L accepted by a non-deterministic Turing machine in polynomial time, there exists a deterministic Turing machine that accepts L in polynomial time. A restricted Turing machine, whose maximum number of nondeterministic moves in the accept computation tree of inputs is limited, is constructed and studied. This limitation establishes a hierarchy of classes associated with natural numbers between P and NP. Any language in NP is also accepted by machines in each of these classes, and P forms the lowest hierarchy level. The paper _"Testing a new idea to solve the P = NP problem with mathematical induction"_is available at[https://peerj.com/preprints/1455/](https://peerj.com/preprints/1455/).

111. **[Not equal]:** In January 2016, Daniel Uribe proved that P is not equal to NP. The method for analyzing algorithmic runtime complexity using decision trees is discussed using the sorting algorithm. This method is then extended to optimal algorithms which may find all cliques of size q in network N, or simply the first clique of size q in network N. Finally, the lower bound of such decision trees is demonstrated to not be in P.
The paper _"P vs. NP"_is available at[http://arxiv.org/abs/1601.03619](http://arxiv.org/abs/1601.03619).

In February 2016, Frank Vega established a closely related result: He showed that P=NP implies P=EXP. Since P is not equal to EXP, this yields that P is not equal to NP. The paper _"Is P equal to NP?"_is available at[https://hal.archives-ouvertes.fr/hal-01270398](https://hal.archives-ouvertes.fr/hal-01270398).
(Thanks to Hans Georg Sedig, Clyde Kruskal, and others for providing these links.)

112. **[Not equal]:** In February 2016, Mathias Hauptmann showed that P is not equal to NP. Hauptmann starts from the assumption that P equals Sigma-2-p, proves a new variant of the Union Theorem of McCreight and Meyer for Sigma-2-p, and eventually derives a contradiction. This implies P not equal to NP. The paper _"On Alternation and the Union Theorem"_ is available at[http://arxiv.org/abs/1602.04781](http://arxiv.org/abs/1602.04781).
(Thanks to Rolf Niedermeier and Ryan Dougherty for providing these links.)

113. **[Equal]:** In March 2016, Steven Meyer established P=NP. Meyer solves the P-versus-NP problem philosophically by showing P is equal to NP in the random access with unit multiply (MRAM) model. More precisely, the P-versus-NP problem is shown to be a scientific rather than a mathematical problem. The assumptions involved in the current definition of the P-versus-NP problem as a problem involving non deterministic Turing Machines (NDTMs) from axiomatic automata theory are criticized. The problem is also shown to be neither a problem in pure nor applied mathematics.
The paper _"Philosophical Solution to P=?NP: P is Equal to NP"_ is available at[http://arxiv.org/abs/1603.06018](http://arxiv.org/abs/1603.06018).
(Thanks to Samuli Leppänen for providing these links.)

114. **[Not equal]:** In April 2016, Javier A. Arroyo-Figueroa showed that P is not equal to NP. Arroyo-Figueroa establishes the existence of a certain class of one-way functions that are (i) computable in polynomial time and (ii) with negligible probability of finding its inverse by any polynomial probabilistic algorithm. This is accomplished by constructing each member in T with a collection of independent universal hash functions that produce a starting coordinate and a path within a sequence of unique random bit matrices. The existence of one-way functions implies that P is not equal to NP.
The paper _"The Tau One-Way Functions Class: P != NP"_ is available at[http://arxiv.org/abs/1604.03758](http://arxiv.org/abs/1604.03758).
(Thanks to Szabolcs Ivan and Christian Lidström for providing these links.)

115. **[Equal]:** In summer 2016, Eli Halylaurin showed P=NP. The main result is that PSPACE is included in P. Because it is already known that P is included in NP and NP is included in PSPACE, this implies the desired P=NP. The paper _"An Attempt to Demonstrate P=NP"_ is available at[http://vixra.org/abs/1605.0278](http://vixra.org/abs/1605.0278).

116. **[Not equal]:** In September 2016, Stefan Rass showed that weak one-way functions exist. These are constructed as preimages of sequences of decision problem instances that are sampled randomly by means of an explicit threshold function. As a consequence, P is not equal to NP. The paper _"On the Existence of Weak One-Way Functions_ is available at[http://arxiv.org/abs/1609.01575](http://arxiv.org/abs/1609.01575).
(Thanks to Andras Salamon for providing these links.)
