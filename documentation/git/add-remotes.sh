#!/bin/bash
set -eo pipefail

usage() {
    echo "USAGE: add-git-remotes.sh https | ssh"
    exit 1
}

if [ ! $1 ]; then
    usage
elif [ $1 == "https" -o $1 == "ssh" ]; then
    MODE=$1
else
    usage
fi

add_remote() {
    remote=$1
    if [ $2 ]; then
        user=$2
    else
        user=$remote
    fi
    if [ $MODE == "https" ]; then
        url=https://github.com/$user/jacktrip.git
    else
        url=git@github.com:$remote/jacktrip.git
    fi

    git remote remove $1 2>/dev/null || true
    echo "$ git remote add $remote $url"
    git remote add $remote $url
}

add_remotes() {
    add_remote upstream jacktrip

    for remote in $@ ; do
        add_remote $remote
    done
}

add_remotes antonrunov jacktrip ntonnaett rec
