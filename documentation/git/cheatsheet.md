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
**upstream**. (These names are Git-standard, not mine.)

All the work you do is in branches in your local repository.  You can have as
many branches as you like and they are completely independent.

New branches are usually based on the branch `jacktrip/dev`, which we call
the **dev branch**.



## A. Check out a fresh branch for new work

    git status  # If there is anything here DO NOT CONTINUE

    git switch -c <my-branchname>
    git fetch jacktrip/dev
    git reset --hard jacktrip/dev
    git push -u origin <my-branchname>

This is the hardest step.  I have a bash function which reduces the last four
steps to a single command.

* `git status` lets you check to see you don't have any edited or untracked
  files - files that git doesn't know about.  It's possible to destroy work
  that way.
* `git switch` creates a new branch local to your repository. The original
  branch is unchanged.
* `git fetch` brings the contents of the current dev branch into your
  repository.
* `git reset --hard` throws away the current contents of this branch and
  replaces them with the dev branch
  * `git reset --hard` is dangerous! But here it's OK because all your work is
    stored on the original branch
* `git push` pushes this new branch to your fork, named `origin`; `-u` means
  you won't have to type `origin` when you `git push` in future.




## B. Creating a new commit

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
