#!/bin/bash
set -eo pipefail

# A list of git config settings to make life a little safer

alias cfg='git config --global'

# Configure line endings for OS/X:
# https://docs.github.com/en/github/using-git/
# configuring-git-to-handle-line-endings#global-settings-for-line-endings

if [[ `uname -a` == Darwin*  ]]; then
    cfg core.autocrlf input
fi

# Newer, nicer-looking indentation in diffs
cfg diff.indentheuristic true

# Automatically get rid of deleted remote branches
# https://stackoverflow.com/a/18718936/43839
cfg fetch.prune true

# Use "main" as default branch for new projects
cfg init.defaultbranch main

# Only merge or pull if you can fast forward and do so without conflicts
# https://blog.sffc.xyz/post/185195398930/why-you-should-use-git-pull-ff-only
cfg merge.ff only
cfg pull.ff only

# Only push if the upstream and local branch have the same name
# https://stackoverflow.com/a/21865319/43839
cfg push.default simple

# Always squash fixup commits in a rebase
cfg rebase.autosquash true

# Re-used old merges if you see them again
# https://stackoverflow.com/a/49501436/43839
cfg rerere.enabled true
