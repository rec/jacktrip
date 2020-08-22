#!/bin/bash

# https://gist.github.com/mohanpedala/1e2ff5661761d3abd0385e8223e16425
set -eo pipefail

usage() {
    echo "USAGE: add-git-remotes.sh https | ssh"
    exit 1
}

add_remote() {
    remote=$1
    if [ $2 ] ; then
        user=$2
    else
        user=$remote
    fi
    if [ $MODE == "https" ] ; then
        url=https://github.com/$user/jacktrip.git
    else
        url=git@github.com:$remote/jacktrip.git
    fi

    echo "$ git remote add $remote $url"
    git remote add $remote $url
}

add_remotes() {
    add_remote upstream jacktrip
    for remote in $@ ; do
        add_remote $remote
    done
}

if [ ! $1 ]; then
    usage
elif [ $1 == "https" -o $1 == "ssh" ] ; then
    MODE=$1
else
    usage
fi

add_remotes antonrunov ntonnaett rec
