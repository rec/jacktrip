# How to use Git for JackTrip development

## A. Forking the JackTrip GitHub repository

1. If you don't have a github account, create one [here](https://github.com/).

2. Now we're going to create a _fork_, which is a copy of the main JackTrip
    project in your own account for you to work on!

3.  Go to the main JackTrip page, https://github.com/jacktrip/jacktrip

4. Near the top right corner of that page there is a little button
    labelled "Fork".  Click it.  If you have multiple github accounts or
    organizations you belong to, you can choose one here.

5. Github goes off and creates the new fork for you.

6. Now your browser will be on the main Github page for your personal fork.
    As you develop, you will be doing it on your own _branches_ which can be
    reached from this page.  You might want to bookmark this!

7. You only have to do this step once, ever.

## B. Setting up authentication

1. For each compuyter you develop on using git and github, you decide how
   to authenticate yourself to github, which means proving that you are
   actually you.

    This is unfortunately necessary because otherwise random blackguards on the
    Internet would overwrite your work out of malice and boredom.

2. github lets you choose between `https` or `ssh` for authentication.
    If you decide you don't like one, you can easily switch to the other.

3. `https` works everywhere, over firewalls, and requires no set up.  It has
    one big drawback - you need to type your password in every time you push
    anything, and if you have a secure password, which you should, this is a
    chore.

4. Many developers get pretty tired of that and start using `ssh`, where you
    never have to enter a password.  The downside is that you have to
    authenticate the machine you are working on with an _SSH key_.

    It's a one-time chore:
    https://docs.github.com/en/github/authenticating-to-github/connecting-to-github-with-ssh

   The writer of this document recommends setting up the SSH key if at all
    possible because reducing friction in common tasks is important to a
    happy workflow.

## C. Clone your fork onto your computer

1. Now you have decided between `https` or `ssh`, you're going to _clone_
    your fork, which means making a copy of its current state into a directory
    on your computer.

2. Go to the Github page for the personal fork of jacktrip that you
    arrived at in step A.6 above.

3. Near the upper right middle of this page is a green button which
    unfortunately has no text on it but a picture of an arrow pointing down.
    Click it.

4. A window pops up.  Choose between  `https` or `ssh`, then click on the
    little clipboard on the right to copy the URL of your fork of JackTrip to
    your clipboard.

5. Now open a terminal and navigate to the directory in which you want to
   create the project.

6. Type `git clone ` ending with a space and then paste the github URL and
    press return.

7. This creates a directory called `jacktrip` in the current directory.
    You'll do all your work here.

8.  Now type `cd jacktrip` and enter that directory.

9.








Next, you need to create a directory on your local disk to work from.






2. This document pretends your Github user name is `wombat` - whenever you see
    `wombat`, replace it with your actual user name.
