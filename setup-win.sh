#!/usr/bin/env bash

echo "###############################################################"
echo "# => Setup git submodules"
echo "###############################################################"

git submodule init
git submodule update
echo "[git submodule] Finished installing"

echo "###############################################################"
echo "# => Setup vim environment"
echo "###############################################################"

if [ -f ~/_vimrc ]; then
    echo "[vim] Found _vimrc. Original _vimrc was backed up to ~/_vimrc.bak"
    cp ~/_vimrc ~/_vimrc.bak
fi

echo "[vim] Copied _vimrc.win to ~/_vimrc"
cp ./template/.vimrc.win ~/_vimrc

if [ ! -d ~/vimswap ]; then
    echo "[vim] Created directory ~/vimswap. This directory will contain all the vim swap files"
    mkdir ~/vimswap
else
    echo "[vim] ~/vimswap directory already exists. This directory will be used to store all the vim swap files"
fi

if [ ! -d ~/vimbackup ]; then
    echo "[vim] Created directory ~/vimbackup. This directory will contain all the vim backup files"
    mkdir ~/vimbackup
else
    echo "[vim] Created directory ~/vimbackup. This directory will contain all the vim backup files"
fi

echo "[vim] Installing NeoBundles"
vim -c NeoBundleInstall -c q

echo "[vim] Finished configuring vim"
