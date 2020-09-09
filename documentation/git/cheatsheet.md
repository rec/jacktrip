# Git cheatsheet

## Before you start

### Check your version

Type `git --version`.  If your version is less than 2.23.0, see Appendix A.

### Some definitions

The local directory where you work is called the **repository** or **repo**.

You have remote repository on github, your fork of JackTrip.
This is called the **origin**.  When you push branches, this is where they
get pushed to.

The central JackTrip repository also lives on github, and it's called the
**upstream** repository.

All the work you do is in branches in your local repository.  You can have as
many branches as you like and they are completely independent.

New branches are usually based on the branch `jacktrip/dev`, which we call
the **dev branch**.

### The typical workflow for JT

1. Check out a fresh branch
2. Make some changes and test them
3. Organize the changes into one or more commits
4. Push the commits to the origin
5. Request a pull request
6. Push some fixup commits on the end
7. Success!

## A. Check out a fresh branch for new work

    git status  # If there is anything here *do not continue*

    git switch -c <my-branchname>
    git fetch jacktrip/dev
    git reset --hard jacktrip/dev
    git push -u origin <my-branchname>

Ah, sorry!  Everything else is a one- or two-liner.

This one is a bit longer because you need to create the branch and then
overwrite it with the most recent dev branch _and_ this needs to work even if
your local branch or your fork are hopelessly out-of-date

 This bash script [`git-new`][git-new] can do it for you in one command if you
put it in your path somewhere.

## B. Make some changes and test them.

See [LINK TO BUILD DOCUMENTS]

## B. Create a new commit

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

APPENDIX: dealing with older versions.

Git 2.23.0
[introduced](https://www.infoq.com/news/2019/08/git-2-23-switch-restore/) two
new commands, `git switch` and `git restore` that completely replace the
old `git checkout` which did two completely unrelated things.

`git checkout` isn't just confusing, you can, and I have, lost work with it.
