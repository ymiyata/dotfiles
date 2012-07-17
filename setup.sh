#!/usr/bin/env bash

cpsafe () {
    if [ "$#" -eq 2 ]; then
        if [ -f "$2" ]; then
            echo "Found $2. Original $2 was backed up to $2.bak"
            cp $2 $2.bak
        fi
        echo "Copied $1 to $2"
        cp $1 $2
    else
        echo "usage: cpsafe source_file target_file"
    fi
}

echo "###############################################################"
echo "# => Setup git submodules"
echo "###############################################################"

git submodule init
git submodule update
echo "[git submodule] Finished installing\n"

echo "###############################################################"
echo "# => Moving dotfiles files to home directory"
echo "###############################################################"

echo "[dotfiles] Moving dotfiles to home"

for f in $(find template -type f -maxdepth 1); do
    cpsafe $f ~/$(basename $f)
done

echo "[dotfiles] Sourcing .profile"
source ~/.profile

echo "[dotfiles] Finished moving dotfiles\n"

echo "###############################################################"
echo "# => Setup zsh"
echo "###############################################################"

echo "[zsh] Install oh-my-zsh"
if [ ! -d ~/.oh-my-zsh ]; then
    /usr/bin/env git clone https://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
else
    echo "[zsh] INFO: oh-my-zsh is already installed"
fi

if [ $SHELL = $(which zsh) ]; then
    echo "[zsh] Change the default shell to zsh"
    chsh -s $(which zsh)
fi

echo "[zsh] Finished configuring Z shell\n"

echo "###############################################################"
echo "# => Setup vim environment"
echo "###############################################################"

echo "[vim] Copying vimrc template to home directory"
cpsafe vim/.vimrc.unix ~/.vimrc

if [ ! -d ~/.vimswap ]; then
    echo "[vim] Created directory ~/.vimswap. This directory will contain all the vim swap files"
    mkdir ~/.vimswap
else
    echo "[vim] ~/.vimswap directory already exists. This directory will be used to store all the vim swap files"
fi

if [ ! -d ~/.vimbackup ]; then
    echo "[vim] Created directory ~/.vimbackup. This directory will contain all the vim backup files"
    mkdir ~/.vimbackup
else
    echo "[vim] ~/.vimbackup directory already exists. This directory will be used to store all the vim backup files"
fi

echo "[vim] Installing NeoBundles"
vim -c NeoBundleInstall -c q

echo "[vim] Finished configuring vim\n"
