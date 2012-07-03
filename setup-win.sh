#!/usr/bin/env bash

if [ -f ~/_vimrc ]; then
    cp ~/_vimrc ~/_vimrc.bak
    echo "You already had a _vimrc in your home directory. The original _vimrc was backed up to ~/_vimrc.bak"
fi

cp ./.vimrc.win ~/_vimrc
echo "Copied .vimrc.win to ~/_vimrc"

git submodule init
git submodule update

if [ ! -d ~/vimswap ]; then
    mkdir ~/vimswap
    echo "Created directory ~/vimswap. This directory will contain all the vim swap files"
else
    echo "~/vimswap directory already exists. This directory will be used to store all the vim swap files"
fi

if [ ! -d ~/vimbackup ]; then
    mkdir ~/vimbackup
    echo "Created directory ~/vimbackup. This directory will contain all the vim backup files"
else
    echo "~/vimbackup directory already exists. This directory will be used to store all the vim backup files"
fi
