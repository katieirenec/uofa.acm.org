<!DOCTYPE html>
<html lang='en' itemscope itemtype="http://schema.org/Organization">
  <head>
    <title>University of Arizona ACM Help: {block 'title'}{/block}</title>
    <meta itemprop="name" content="The University of Arizona ACM">
    <meta itemprop="description" content="The University of Arizona ACM charter is an official ACM student chapter located in Tucson, Arizona.">
    <meta itemprop="image" content="https://plus.google.com/b/101197312921565460890/101197312921565460890/posts">
    <meta charset='UTF-8'>
    <link rel='stylesheet' href='../static/css/reset.css'>
    <link href='http://fonts.googleapis.com/css?family=Lato:300|Glegoo' rel='stylesheet'>
    <link rel='stylesheet' href='../static/css/acm.css'>
    <link href='https://plus.google.com/101197312921565460890' rel='publisher'>
    <link rel='stylesheet' media='screen and (max-width: 715px)' href='../static/css/hide-github.css'>
    <link rel='stylesheet' media='screen and (max-width: 900px)' href='../static/css/windowed.css'>
    {if $mobile}
    <link rel='stylesheet' href='../static/css/mobile.css'>
    {/if}
    {block 'css'}{/block}
    <script src='https://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js'></script>
    {block 'javascript'}{/block}
    <script src='../static/js/analytics.js'></script>
  </head>
  <body>
    <div class='shadow-top'></div>
    <div class='shadow-bottom'></div>
    <header>
        <div id='logo' onclick='window.location="../"' class='logo link'>
          <h1 class='red'>The University of Arizona ACM</h1>
          <h2>Member Tools</h2>
        </div>
        <nav>
            <a href='../'>HOME</a> &middot;
            <a href='index.php'>HELP</a> &middot;
            <a href='https://campus.acm.org/public/chapters/chapterprofile/chapteradmin.cfm'>CHAPTER INTERFACE</a> &middot;
            <a href='https://github.com/justinvh/University-of-Arizona-ACM-Charter-Bylaws/raw/master/acm.pdf'>CONSTITUTION</a>
        </nav>
        <div class='clear'></div>
    </header>

    {block 'content'}{/block}
    <footer>&copy; ACM chapter of University of Arizona</footer>
    </body>
</html>
