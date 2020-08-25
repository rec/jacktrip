# Setting up to use Git for JackTrip development

These instructions are for Unix-like systems - they might work also on Cygwin
on Windows.

## Installing or upgrading git

Install or upgrade to the most recent version of git here:
https://git-scm.com/download





## Before you start 2: your text editor

Several git commands such as `git-commit` and `git-rebase` will in some case
bring up your text editor

## Before you start 3: useful git configuration values

There's a whole collection of useful settings of global git configur
configuration values

I have a collection of

## Before you start 3: gitz

I have a collection of




## B. Setting up authentication

1. For each computer you develop on using git and github, you decide how
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
    on your computer.  Usually you only do this once per machine.

2. Go to the Github page for the personal fork of jacktrip that you
    arrived at in step A.6 above.

3. Near the upper right middle of this page is a green button which
    unfortunately has no text on it but a picture of an arrow pointing down.
    Click it.

4. A window pops up.  Choose between  `https` or `ssh`, then click on the
    little clipboard on the right to copy the URL of your fork of JackTrip to
    your clipboard.

5. Now open a command line and navigate to the directory in which you want to
   create the project.

6. Type `git clone ` ending with a space, then paste the github URL
    from the clipboard - then press return to clone the fork.

7. This creates a directory called `jacktrip` in the current directory.
    You'll do all your work here.

8.  Now run `cd jacktrip` to enter that directory.

9. There is a script named `documentation/add-git-remotes.sh` that  adds git
    remotes for other people who are also working on JackTrip:

       # Depending on your authentication type (see section B), either

       documentation/git/add-remotes.sh ssh

       # or

       documentation/git/add-remotes.sh https
