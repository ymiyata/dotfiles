#!/usr/bin/env bash

cpsafe() {
    if [ "$#" -eq 2 ]; then
        if [ -f "$2" ]; then
            printf "\033[31mFound $2. Original $2 was backed up to $2.bak\033[0m\n"
            cp $2 $2.bak
        fi
        printf "\033[31mCopied $1 to $2\033[0m\n"
        cp $1 $2
    else
        printf "\033[31musage: cpsafe source_file target_file\033[0m\n"
    fi
}

prepend() {
    if [ "$#" -eq 2 ]; then
        echo $1 | cat - $2 > /tmp/out && mv /tmp/out $2
    else
        printf "\033[31musage: prepend text file\033[0m\n"
    fi
}

printf "\033[32m###############################################################\033[0m\n"
printf "\033[32m# => Setup git submodules                                      \033[0m\n"
printf "\033[32m###############################################################\033[0m\n"

git submodule init
git submodule update
printf "\033[34m[git submodule]\033[0m\033[37m Finished installing\033[0m\n\n"

printf "\033[32m###############################################################\033[0m\n"
printf "\033[32m# => Moving dotfiles files to home directory                   \033[0m\n"
printf "\033[32m###############################################################\033[0m\n"

printf "\033[34m[dotfiles]\033[0m\033[37m Moving dotfiles to home\033[0m\n"

for f in $(find template -maxdepth 1 -type f); do
    cpsafe $f ~/$(basename $f)
done

printf "\033[34m[dotfiles]\033[0m\033[37m Setting DOTFILES_DIR environment variable to current directory ($(pwd))\033[0m\n"
prepend "export DOTFILES_DIR=$(pwd)" ~/.profile

printf "\033[34m[dotfiles]\033[0m\033[37m Sourcing .profile\033[0m\n"
source ~/.profile

printf "\033[34m[dotfiles]\033[0m\033[37m Finished moving dotfiles\033[0m\n\n"

printf "\033[32m###############################################################\033[0m\n"
printf "\033[32m# => Setup zsh                                                 \033[0m\n"
printf "\033[32m###############################################################\033[0m\n"

printf "\033[34m[zsh]\033[0m\033[37m Install oh-my-zsh\033[0m\n"
if [ ! -d ~/.oh-my-zsh ]; then
    /usr/bin/env git clone https://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
else
    printf "\033[34m[zsh]\033[0m\033[37m INFO: oh-my-zsh is already installed\033[0m\n"
fi

if [ $SHELL != $(which zsh) ]; then
    printf "\033[34m[zsh]\033[0m\033[37m Change the default shell to zsh\033[0m\n"
    chsh -s $(which zsh)
fi

printf "\033[34m[zsh]\033[0m\033[37m Finished configuring Z shell\033[0m\n\n"

printf "\033[32m###############################################################\033[0m\n"
printf "\033[32m# => Setup vim                                                 \033[0m\n"
printf "\033[32m###############################################################\033[0m\n"

printf "\033[34m[vim]\033[0m\033[37m Copying vimrc template to home directory\033[0m\n"
cpsafe vim/.vimrc.unix ~/.vimrc

if [ ! -d ~/.vimswap ]; then
    printf "\033[34m[vim]\033[0m\033[37m Created directory ~/.vimswap. This directory will contain all the vim swap files\033[0m\n"
    mkdir ~/.vimswap
else
    printf "\033[34m[vim]\033[0m\033[37m ~/.vimswap directory already exists. This directory will be used to store all the vim swap files\033[0m\n"
fi

if [ ! -d ~/.vimbackup ]; then
    printf "\033[34m[vim]\033[0m\033[37m Created directory ~/.vimbackup. This directory will contain all the vim backup files\033[0m\n"
    mkdir ~/.vimbackup
else
    printf "\033[34m[vim]\033[0m\033[37m ~/.vimbackup directory already exists. This directory will be used to store all the vim backup files\033[0m\n"
fi

printf "\033[34m[vim]\033[0m\033[37m Installing NeoBundles\033[0m\n"
vim -c NeoBundleInstall -c q

printf "\033[34m[vim]\033[0m\033[37m Finished configuring vim\033[0m\n\n"
