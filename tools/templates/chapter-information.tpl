{extends 'base.tpl'}

{block 'title'}General Chapter Information{/block}

{block 'content'}
{literal}
<section class='block full-page'>
    <h1>General Chapter Information</h1>
    <p>This page provides information on our chapter and a few of the miscellaneous
    topics that would otherwise not be in a category.</p>

    <h1 id="donating">Donating to our Chapter</h1>
    <h1 id="forking">Forking our Website</h1>
    <p>This information describes the steps needed to fork, update, and create a pull request for our chapter's website.</p>
    <section class='content header-red'>
        <h1 id="mac">Working on the ACM site with your Mac</h1>
        <h2>Setting up Apache</h2>

        <p>Mac OS X comes with a relatively modern version of Apache and PHP. Since our
        goal is get the ACM site up-and-running locally with minimal configuration overhead,
        we'll use this built-in web server.</p>

        <p><em>An open terminal will be handy for this guide. A command line which begins with <code>#</code>
        should be executed as the <strong>root</strong> account, while <code>$</code> means your normal login.</em></p>

        <p>First, enable Apache by navigating to <code>System Preferences -&gt; Sharing</code> and checking 
        <code>Web Sharing</code>. Confirm that the web server is running by visiting <a href="http://localhost">localhost</a>. If you see <strong>"It works!"</strong> then you are ready for the next step.</p>

        <p>By default, Apache will not be configured to load the PHP module. Copy-and-paste the following line to your terminal window:</p>

        <p><code>$ sudo sed -i '' -e 's/^#LoadModule php5/LoadModule php5/' /etc/apache2/httpd.conf</code></p>

        <p>When we configure our local ACM site, we'll be using symlinks into the public user web directory. We must configure the Apache server to follow symlinks. Add <code>FoolowSymLinks</code> to <code>/etc/apache/users/$USER.conf</code> where <code>$USER</code> is your normal user account. The file should look similar to this:</p>

        <code>&lt;Directory "/Users/cwvh/Sites/"&gt;
    Options Indexes MultiViews FollowSymLinks
      ...
&lt;/Directory&gt; </code>

        <p>Finally, PHP's datetime functions will not default to a timezone and cause annoying errors later on. We'll remedy this now by telling PHP what timezone to use.</p>

        <p><code># cp /etc/php.ini{.default,} &amp;&amp; echo "date.timezone = 'America/Phoenix'" &gt;&gt;/etc/php.ini</code></p>

        <p>That is all for Apache configuration. Easy!</p>

        <h2>Setting up GitHub SSH access</h2>

        <p>If you do not have a GitHub account, go <a href="http://github.com">GitHub.com</a> and register an account. Once you have an account, proceed to your <a href="https://github.com/settings/ssh">SSH Keys</a> page under <em>Profile</em>. Back in the terminal, create a new SSH public key. <em>(If you have an existing pubkey, use that and skip down a few steps.)</em></p>

        <p><code>$ cd ; ssh-keygen -t rsa</code></p>

        <p>Press the 'Enter' key for all the questions (this is slightly insecure, but oh well.) After <code>ssh-keygen</code> has generated the key, you can put this into your copy-paste buffer with the following command:</p>

        <p><code>$ cat ~/.ssh/id_rsa.pub | pbcopy</code></p>

        <p>On the <a href="https://github.com/settings/ssh">SSH Keys</a> page, click <em>Add New SSH Key</em>. Title this entry so you know which machine this is from and then use <code>Command-v</code> to paste the contents of the pubkey. You're almost done!</p>

        <p>Now we need to tell <code>git</code> who we are on GitHub. This is done by an API token which is unique to your GitHub user account. Don't give this token out otherwise people will be able to impersonate you! Your API token can be found on <a href="https://github.com/settings/admin">the Admin page</a> under <em>API Token</em>. Create a gitconfig by opening <code>~/.gitconfig</code> in your favorite editor. Add the following contents:</p>

        <p>Execute the following commands to configure <code>git</code> for GitHub.</p>

        <code>$ git config --global user.name "First Lastname"
$ git config --global user.email "your_email@youremail.com"
$ git config --global github.user &lt;your github username&gt;
$ git config --global github.token 0123456789yourf0123456789token </code>

        <p>That's it. GitHub, SSH access and Git are configured.</p>

        <h2>Forking, cloning, and viewing</h2>

        <p>Visit the <a href="https://github.com/uofa-acm/uofa.acm.org">ACM GitHub repo</a> and click <em>Create Fork</em>. Now, back in your terminal, execute the following commands:</p>

        <code>$ mkdir ~/github
$ cd ~/github
$ git clone git@github.com:$USER/uofa.acm.org.git
$ chmod 777 uofa.acm.org/smarty/\{templates_c,cache\}
$ mkdir ~/Sites
$ cd ~/Sites
$ ln -s ~/github/uofa.acm.org acm
$ touch acm/private.php
$ sudo apachectl restart</code>

        <p>This will create a <code>github</code> directory in your <code>$HOME</code> and put your forked ACM repo there. We then symlink the publicly-accessible <code>Sites/acm</code> path back to your source directory. Finally, we restart Apache.</p>

        <p>You can now see your fork of the ACM site at <a href="http://localhost/~%24USER/acm">localhost/~$USER/acm</a> where <code>$USER</code> is your Unix login name.</p>

        <h2>Hacking</h2>

        <p>When you make changes, you'll want to push them back to your repo on GitHub. When you visit your repo's page you can <em>Create Pull Request</em> to signal to the officers that you want your changes merged. Happy hacking!</p>
  </section>
    
    <h1 id="creating">Creating an ACM Event</h1>
    <h1 id="participating">Participating in our Competitions</h1>
</section>
{/literal}
{/block}

