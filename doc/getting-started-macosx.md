# Working on the ACM site with your Mac

## Setting up Apache

Mac OS X comes with a relatively modern version of Apache and PHP. Since our
goal is get the ACM site up-and-running locally with minimal configuration overhead,
we'll use this built-in web server.

*An open terminal will be handy for this guide. A command line which begins with `#`
should be executed as the __root__ account, while `$` means your normal login.*

First, enable Apache by navigating to `System Preferences -> Sharing` and checking 
`Web Sharing`. Confirm that the web server is running by visiting [localhost](http://localhost). If you see __"It works!"__ then you are ready for the next step.

By default, Apache will not be configured to load the PHP module. Copy-and-paste the following line to your terminal window:

```$ sudo sed -i '' -e 's/^#LoadModule php5/LoadModule php5/' /etc/apache2/httpd.conf```

When we configure our local ACM site, we'll be using symlinks into the public user web directory. We must configure the Apache server to follow symlinks. Add `FoolowSymLinks` to `/etc/apache/users/$USER.conf` where `$USER` is your normal user account. The file should look similar to this:

```
<Directory "/Users/cwvh/Sites/">
Options Indexes MultiViews FollowSymLinks
  ...
</Directory>
```

Finally, PHP's datetime functions will not default to a timezone and cause annoying errors later on. We'll remedy this now by telling PHP what timezone to use.

```# cp /etc/php.ini{.default,} && echo "date.timezone = 'America/Phoenix'" >>/etc/php.ini```


That is all for Apache configuration. Easy!

## Setting up GitHub SSH access

If you do not have a GitHub account, go [GitHub.com](http://github.com) and register an account. Once you have an account, proceed to your [SSH Keys](https://github.com/settings/ssh) page under *Profile*. Back in the terminal, create a new SSH public key. *(If you have an existing pubkey, use that and skip down a few steps.)*

```$ cd ; ssh-keygen -t rsa```

Press the 'Enter' key for all the questions (this is slightly insecure, but oh well.) After `ssh-keygen` has generated the key, you can put this into your copy-paste buffer with the following command:

```$ cat ~/.ssh/id_rsa.pub | pbcopy```

On the [SSH Keys](https://github.com/settings/ssh) page, click *Add New SSH Key*. Title this entry so you know which machine this is from and then use ```Command-v``` to paste the contents of the pubkey. You're almost done!

Now we need to tell `git` who we are on GitHub. This is done by an API token which is unique to your GitHub user account. Don't give this token out otherwise people will be able to impersonate you! Your API token can be found on [the Admin page](https://github.com/settings/admin) under *API Token*. Create a gitconfig by opening ```~/.gitconfig``` in your favorite editor. Add the following contents:

Replace all the variables with your specific information.
```
[github]
        user = $USER
        token = $TOKEN
[user]
        name = $YOUR-FULL-NAME
        email = $YOUR-EMAIL
```

That's it. GitHub, SSH access and Git are configured.

## Forking, cloning, and viewing

Visit the [ACM GitHub repo](https://github.com/uofa-acm/uofa.acm.org) and click *Create Fork*. Now, back in your terminal, execute the following commands:

```
$ mkdir ~/github
$ cd ~/github
$ git clone git@github.com:$USER/uofa.acm.org.git
$ chmod 777 uofa.acm.org/smarty/{templates_c,cache}
$ mkdir ~/Sites
$ cd ~/Sites
$ ln -s ~/github/uofa.acm.org acm
$ touch acm/private.php
$ sudo apachectl restart
```

This will create a ```github``` directory in your ```$HOME``` and put your forked ACM repo there. We then symlink the publicly-accessible ```Sites/acm``` path back to your source directory. Finally, we restart Apache.

You can now see your fork of the ACM site at [localhost/~$USER/acm](http://localhost/~$USER/acm) where `$USER` is your Unix login name.

## Hacking

When you make changes, you'll want to push them back to your repo on GitHub. When you visit your repo's page you can *Create Pull Request* to signal to the officers that you want your changes merged. Happy hacking!
