# Git workflow

1. Check out a fresh branch
2. Make changes and test them
3. Organize changes into one or more commits
4. Make a pull request
5. Respond to suggestions until approval
6. Clean up the branch/final check
7. The pull request is merged
8. Success!

### Some definitions

The local directory where you work is called the **local repository** or
**repo**.

You also work on a remote repository on github, called the origin.  When
you "push", your commits are copied from the local repo to the origin.

Remote branches are named like this: `<username>/<branchname>` - for example,
`jacktrip/main` or `rec/doc`.

New branches are usually based on the branch `jacktrip/dev`, named the **dev
branch**.

## 1. Check out a fresh branch

    git status  # If there is anything here, resolve before continuing!

    git fetch jacktrip/dev
    git checkout -b <new-branch> jacktrip/dev
    git push -u origin <my-branchname>

This bash script [`git-jtnew`][git-jtnew] can do it for you in one command
if you put it in your `PATH`.

## 2. Make changes and test them

See [LINK TO BUILD AND TEST DOCUMENTS]

## 3. Organize changes into one or more commits

One commit should be one logical change.  Smaller is generally better.
See [document on making commits].

To create a commit in your local branch and push it to the origin branch:

    git commit <file> [<file> ...]

Your text editor will open up after the first step for you to type in a useful
Git commit message: see https://chris.beams.io/posts/git-commit/

    git push

This pushes the commit to the origin.

## 4. Make a pull request


## 5. Respond to suggestions until approval
## 6. Clean up the branch/final check
## 7. The pull request is merged
## 8. Success!

Clean up your local branch

    git branch -D <new-branch>

B. Create a new commit

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


\### Check your version

Type `git --version`.  If your version is less than 2.23.0, see Appendix A.
