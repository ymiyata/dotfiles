#!/usr/bin/env bash

if [ -f ~/.vimrc ]; then
    cp ~/.vimrc ~/.vimrc.bak
    echo "You already had a .vimrc in your home directory. The original .vimrc was backed up to ~/.vimrc.bak"
fi

cp ./.vimrc.unix ~/.vimrc
echo "Copied .vimrc.unix to ~/.vimrc"

git submodule init
git submodule update

if [ ! -d ~/.vimswap ]; then
    mkdir ~/.vimswap
    echo "Created directory ~/.vimswap. This directory will contain all the vim swap files"
else
    echo "~/.vimswap directory already exists. This directory will be used to store all the vim swap files"
fi

if [ ! -d ~/.vimbackup ]; then
    mkdir ~/.vimbackup
    echo "Created directory ~/.vimbackup. This directory will contain all the vim backup files"
else
    echo "~/.vimbackup directory already exists. This directory will be used to store all the vim backup files"
fi
