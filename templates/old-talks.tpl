{extends 'base.tpl'}

{block 'title'}Events and Talks From the Past{/block}

{block 'content'}
<section class='block width-600 center'>
  <h1>Past Talks</h1>
  <h2>Need some resources or want to know what you missed?</h2>

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

