#!/bin/bash

git submodule init
git submodule update

if [ ! -d ~/.vimswap ]; then
    mkdir ~/.vimswap
    echo "Created directory ~/.vimswap. This directory will contain all the vim swap files"
else
    echo "~/.vimswap directory already exists. Skipping this step"
fi

if [ ! -d ~/.vimbackup ]; then
    mkdir ~/.vimbackup
    echo "Created directory ~/.vimbackup. This directory will contain all the vim backup files"
else
    echo "~/.vimbackup directory already exists. Skipping this step"
fi
