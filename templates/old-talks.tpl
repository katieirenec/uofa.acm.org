{extends 'base.tpl'}

{block 'title'}Events and Talks From the Past{/block}

{block 'content'}
<section class='block width-600 center'>
  <h1>Past Talks</h1>
  <h2>Need some resources or want to know what you missed?</h2>


  <time datetime='2012-10-5T05:00-06:00'>October 5th</time>
  <h4>Go and more <em>(Justin Van Horne)</em></h4>
  <p>Our first lightning talk of the semester kicks off with an introduction to Go.
  Go is concurrent, garbage-collected, and scalable language. It provides a fast, fun,
  and interesting design that allows for interfaces, reflection, concurrency and more.
  With that said we are setting up a talk line-up, so talks, times, and dates are
  subject to change.</p>

  <time datetime='2012-09-28T05:00-06:00'>September 28th</time>
  <h4>ICPC 2012 Solutions</h4>
  <p>Join us and discuss the solutions to our largest ACM local ICPC turnout!
  Over 50 students competeted to solve eight problems in five hours. This week we will
  provide solutions to a few problems and go over the basic strategy of the others.
  We will also be providing a solution's page in the style of CodeJam for all our
  competitors. Stay tuned!</p>

  <time datetime='2012-09-21T05:00-06:00'>September 21st</time>
  <h4>Last minute questions and preparations</h4>
  <p>If you have any last minute questions or suggestions for the competition then
  you will want to be here today. We will briefly discuss the competition and provide
  details on the catering, problems, and afterparty.</p>

  <time datetime='2012-09-14T05:00-06:00'>September 14th</time>
  <h4>Hang-out / ICPC Mix</h4>
  <p>Show up and hang-out. Talk about the <a href='http://news.ycombinator.com/'>HN-flavor</a>
  of the day, your favorite subreddit, or just vent your weekly-CS irritations. You're
  welcome to continue the discussion afterwards while enjoying a few drinks.
  <span class='red'>Aftermath:</span> We ended up solving two problems from the
  <a href='http://www.cs.arizona.edu/acm/LocalContest/Problems08.pdf'>2011 competition</a>,
  enjoyed a discussion on embedding Python, a primer on core concepts in the ACM
  competition, and a look at other competitions outside of ICPC. The night ended with
  drinks and food at a local bar.</p>

  <time datetime='2012-09-07T05:00-06:00'>September 7th</time>
  <h4>Programming Competition, Lightning Talks, and Events</h4>
  <p>The ICPC ACM Programming Competition begins with the qualification round on
  September 22nd. We will discuss the  times, food, and structure of the competition.
  Our Fall sponsor, Microsoft, will be providing prizes and internship opportunities.
  <a title='ACM ICPC Slides' href='http://goo.gl/IGkZT'>(view this presentation)</a></p>

  <time datetime='2012-08-27T05:00-06:00'>August 27th</time>
  <h4>Officers 2012 Meetup</h4>
  <p>Join your local uofa ACM chapter at 5PM (hopefully in GS-701).
  Topics of interest for the first week are the usual: welcome to the club,
  upcoming talks, focal points of the semester, and the regional competition.
  We will also be electing a new president and establishing a common meeting time.</p>

  <time datetime='2012-04-09T06:00-07:00'>Apr 9</time>
  <h4>Django<br><em>(Justin Van Horne)</em></h4>
  <p>It's a framework for perfectionists with deadlines. This week's talk
  concerns a high-level web framework written in Python. See its applications
  and usages. <a href='http://goo.gl/cFM6o'>(view this presentation)</a></p>

  <time datetime='2012-03-26T06:00-07:00'>Mar 26</time>
  <h4>Fame and Fortune* Through Graph Theory<br><em>(Katie Cunningham)</em></h4>
  <p>Katie Cunningham will continue her talk on graph theory and related 
  research with graph vizualizations.</p>

  <time datetime='2012-04-02T06:00-07:00'>Apr 4</time>
  <h4>Let's Build an Engine <em>(Justin Van Horne)</em></h4>
  <p>If you have ever been interested in developing a game, then this talk
  will put you in the right direction. Learn how to create your tools,
  utilize OpenGL, and work with libraries like Pyglet, SDL, and more.</p>

  <time datetime='2012-04-02T06:00-07:00'>Apr 11</time>
  <h4>Snakes on an Engine <em>(Justin Van Horne)</em></h4>
  <p>The power of Python with the greatness of V8. Learn how to create a
  JavaScript interface to your Python programs with ease. This talk will demonstrate
  a small game and usage of previous topics, such as inotify.</p>


  <time datetime='2012-03-19T06:00-07:00'>Mar 19</time>
  <h4>Fame and Fortune* Through Graph Theory<br><em>(Katie Cunningham)</em></h4>
  <p>Katie Cunningham will be giving a short talk on basic graph theory and related research in graph vizualization.</p>

  <time datetime='2012-02-27T06:00:00-07:00'>Feb 27</time>
  <h4>It's a survival trait! <em>(Justin Van Horne)</em></h4>
  <p>Stripe is hosting a 6-level 
  <a href='https://stripe.com/blog/capture-the-flag'>capture the flag</a>
  competition and we want to show you how to get to level 6! It's up to you to
  solve the last problem, but we will walk you the first five. We'll explain
  and demonstrate buffer overflows, stack smashing, shellcode, regex exploits, 
  and more.</p>

  <time datetime='2012-02-20T06:00:00-07:00'>Feb 20</time>
  <h4>Spring Programming Competition <em>(Justin Van Horne)</em></h4>
  <p> It's time to decide how we're structuring the competition this semester. We'll spend the next few weeks going over the problem or problems as well as funding, location, and so on.
  </p>

  <h4>Vim: like typing, but faster <em>(Chas Leichner)</em></h4>
  <p> Rise up, hacker! Cast off the chains of your IDE! An introduction to vim
  for high speed text editing.
  </p>

  <h4>Inotify: the better dnotify <em>(Justin Van Horne)</em></h4>
  <p>Inotify is a Linux kernel subsystem that provides a mechanism for 
  monitoring file system events. Never again will you have to poll files 
  or directories for changes. Justin will demonstrate the C API as well 
  as the equivalent Python API.</p>

  <time datetime='2012-02-13T06:15:00-06:30'>Feb 13</time>
  <h4>An Introduction to Monads<em>(Chris Van Horne)</em></h4>
  <p>
  Continuing from the "Haskell in 15 Minutes" talk from last week,
  Chris will cover monads and remove some of their mystique. The talk
  will give the rationale of monads in a pure lazy functional
  language like Haskell. The Wadler interpreter will be the vehicle
  of discovery for derivation of two standard Haskell monads: 
  <code>Maybe</code> and 
  <code>Writer</code>. This talk should be considered
  advanced, but the high-level concepts appropriate for a 200-level CSc student. <a href='static/talks/monads-acm-spring12.pdf'>Download this PDF.</a></p>

  <h4>Git: rm *.old <em>(Chas Leichner)</em></h4>
  <p>An introduction to version control with git, covering what version control
  is and why we use it, how to do basic operations with git, how to use git to
  collaborate with others, and the basics of github.
  </p>
</section>
{/block}

