#!/bin/bash
set -eo pipefail

# A list of git global config settings to make life a little safer

# Aliases

# `git list` lists the last 8 commits, one line each
# `git list -23` lists the last 23 commits, one line each
git config --global alias.list 'log --oneline -8'

# Only merge or pull if you can fast forward and do so without conflicts
# https://blog.sffc.xyz/post/185195398930/why-you-should-use-git-pull-ff-only
git config --global merge.ff only
git config --global pull.ff only

# Only push if the upstream and local branch have the same name
# https://stackoverflow.com/a/21865319/43839
git config --global push.default simple

# Always squash fixup commits in a rebase
git config --global rebase.autosquash true

# Re-used old merges if you see them again
# https://stackoverflow.com/a/49501436/43839
git config --global rerere.enabled true

# Configure line endings for OS/X:
#
# https://docs.github.com/en/github/using-git/
# configuring-git-to-handle-line-endings#global-settings-for-line-endings

if [[ `uname -a` == Darwin* ]]; then
    git config --global core.autocrlf input
fi

# Newer, nicer-looking indentation in diffs
git config --global diff.indentheuristic true

# Automatically get rid of deleted remote branches
# https://stackoverflow.com/a/18718936/43839
git config --global fetch.prune true

# Use "main" as default branch for new projects
git config --global init.defaultbranch main
