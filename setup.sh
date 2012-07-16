#!/usr/bin/env bash

echo "###############################################################"
echo "# => Setup git submodules"
echo "###############################################################"

git submodule init
git submodule update
echo "[git submodule] Finished installing\n"

echo "###############################################################"
echo "# => Setup vim environment"
echo "###############################################################"

if [ -f ~/.vimrc ]; then
    echo "[vim] Found .vimrc. Original .vimrc was backed up to ~/.vimrc.bak"
    cp ~/.vimrc ~/.vimrc.bak
fi

echo "[vim] Copied .vimrc.unix to ~/.vimrc"
cp ./template/.vimrc.unix ~/.vimrc

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

echo "###############################################################"
echo "# => Setup zsh"
echo "###############################################################"

echo "[zsh] Install oh-my-zsh"
if [ ! -d ~/.oh-my-zsh ]; then
    /usr/bin/env git clone https://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
else
    echo "[zsh] INFO: oh-my-zsh is already installed"
fi

if [ -f ~/.zshrc ]; then
    echo "[zsh] Found .zshrc. Original .zshrc was backed up to ~/.zshrc.bak"
    cp ~/.zshrc ~/.zshrc.bak
fi

echo "[zsh] Copied template/.zshrc to ~/.zshrc"
cp ./template/.zshrc ~/.zshrc

echo "[zsh] Change the default shell to zsh"
chsh -s $(which zsh)

echo "[zsh] Finished configuring Z shell\n"

echo "###############################################################"
echo "# => Setup git"
echo "###############################################################"

if [ -f ~/.gitconfig ]; then
    echo "[git] Found .gitconfig. Backing it up to .gitconfig.bak"
    cp ~/.gitconfig ~/.gitconfig.bak
fi

echo "[git] Copied template/.gitconfig to ~/.gitconfig"
cp ./template/.gitconfig ~/.gitconfig

echo "[git] Make sure to fill the [user] field in your .gitconfig"
echo "[git] Finished configuring git"
