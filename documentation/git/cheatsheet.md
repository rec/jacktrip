# Git cheatsheet

https://git-scm.com/book/en/v2/Getting-Started-First-Time-Git-Setup

## Before you start 1: check your git version!

Go to your terminal and type:

    git --version

If the git version is _earlier_ than 2.23.0, strongly consider updating.  The
current version, 2.26.0, is good.

Git 2.23.0
[introduced](https://www.infoq.com/news/2019/08/git-2-23-switch-restore/) two
new commands, `git switch` and `git restore` that completely replace the
horrible confusing dangerous old `git checkout`.

I'm going to use those two new commands everywhere here, and then I'll have an
appendix where I explain it for people who cannot update.

## Before you start 2: your text editor

Several git commands such as `git-commit` and `git-rebase` will in some case
bring up your text editor

## Before you start 3: useful git configuration values

There's a whole collection of useful settings of global git configur
configuration values

I have a collection of

## Before you start 3: gitz

I have a collection of


## A. Checking out a fresh branch for new work

Suppose the new branch is called `cage`.

    # Check to make sure you aren't overwriting changes
    git status

    # Create the new branch local to this repository
    git switch -c cage

    # Fetch the development branch
    git fetch jacktrip/dev

    # Hard-reset the state of this new branch cage
    # to be the development branch.
    #
    # git reset --hard is dangerous;  here it's OK, because
    # you have done no work on this branch.
    git reset --hard jacktrip/dev

    # Now push your branch to your fork on github.com
    # and set the local branch to track it.
    git push -u origin cage

    # "Tracking" means that the next time you need to push, you can
    # just type `git push`

If you have the gitz tools mentioned above, you can just do

    # Create a new branch, making sure you aren't overwriting any changes
    git new cage

## B. Creating a commit

When you commit

## C. Updating branch when the reference branch changes

## D. Making changes to most recent commit

## Making changes to an older commit

## D. Sending out a pull request

## Restoring a single file or directory

## Switching between branches

## Responding to comments on pull requests

## Making a copy of someone else's branch




Work on JackTrip eventually ends up as a series of commits on the development
branch `jacktrip/dev`, whose URL is
https://github.com/jacktrip/jacktrip/tree/dev.







Next, you need to create a directory on your local disk to work from.






2. This document pretends your Github user name is `wombat` - whenever you see
    `wombat`, replace it with your actual user name.
