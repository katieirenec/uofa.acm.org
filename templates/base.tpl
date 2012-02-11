<!DOCTYPE html>
<html lang='en'>
  <head>
    <title>University of Arizona ACM: {block 'title'}{/block}</title>
    <meta charset='UTF-8'>
    <link rel='stylesheet' href='/static/css/reset.css'>
    <link href='http://fonts.googleapis.com/css?family=Lato:300|Glegoo' rel='stylesheet'>
    <link rel='stylesheet' href='/static/css/acm.css'>
    <link href='https://plus.google.com/101197312921565460890' rel='publisher'>
    {block 'css'}{/block}
    <script src='https://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js'></script>
    {block 'javascript'}{/block}
  </head>
  <body>
    <div class='shadow-top'></div>
    <div class='shadow-bottom'></div>
    <header>
        <div id='logo' class='logo link'>
          <h1 class='red'>The University of Arizona ACM</h1>
          <h2>Association for Computing Machinery</h2>
        </div>
        <nav>
        <a href='/'>EVENTS</a> &middot;
        <a href='/subscribe.php'>SUBSCRIBE</a> &middot;
        <a href='/speak.php'>SPEAK</a> &middot;
        <a href='/what-is-acm.php'>CHAPTER</a> &middot;
        <a href='/officers.php'>OFFICERS</a>
        </nav>
        <div class='clear'></div>
    </header>

    {block 'content'}{/block}
    <script src='/static/js/resize.js'></script>
    </body>
</html>
