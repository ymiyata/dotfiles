#!/usr/bin/env bash

cpsafe () {
    if [ "$#" -eq 2 ]; then
        if [ -f "$2" ]; then
            printf "\e[31mFound $2. Original $2 was backed up to $2.bak\e[0m\n"
            cp $2 $2.bak
        fi
        printf "\e[31mCopied $1 to $2\e[0m\n"
        cp $1 $2
    else
        printf "\e[31musage: cpsafe source_file target_file\e[0m\n"
    fi
}

prepend () {
    if [ "$#" -eq 2 ]; then
        echo $1 | cat - $2 > /tmp/out && mv /tmp/out $2
    else
        printf "\e[31musage: prepend text file\e[0m\n"
    fi
}

printf "\e[32m###############################################################\e[0m\n"
printf "\e[32m# => Setup git submodules                                      \e[0m\n"
printf "\e[32m###############################################################\e[0m\n"

git submodule init
git submodule update
printf "\e[34m[git submodule]\e[0m\e[37m Finished installing\e[0m\n\n"

printf "\e[32m###############################################################\e[0m\n"
printf "\e[32m# => Moving dotfiles files to home directory                   \e[0m\n"
printf "\e[32m###############################################################\e[0m\n"

printf "\e[34m[dotfiles]\e[0m\e[37m Moving dotfiles to home\e[0m\n"

for f in $(find template -type f -maxdepth 1); do
    cpsafe $f ~/$(basename $f)
done

printf "\e[34m[dotfiles]\e[0m\e[37m Setting DOTFILES_DIR environment variable to current directory ($(pwd))\e[0m\n"
prepend "export DOTFILES_DIR=$(pwd)" ~/.profile

printf "\e[34m[dotfiles]\e[0m\e[37m Sourcing .profile\e[0m\n"
source ~/.profile

printf "\e[34m[dotfiles]\e[0m\e[37m Finished moving dotfiles\e[0m\n\n"

printf "\e[32m###############################################################\e[0m\n"
printf "\e[32m# => Setup zsh                                                 \e[0m\n"
printf "\e[32m###############################################################\e[0m\n"

printf "\e[34m[zsh]\e[0m\e[37m Install oh-my-zsh\e[0m\n"
if [ ! -d ~/.oh-my-zsh ]; then
    /usr/bin/env git clone https://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
else
    printf "\e[34m[zsh]\e[0m\e[37m INFO: oh-my-zsh is already installed\e[0m\n"
fi

if [ $SHELL != $(which zsh) ]; then
    printf "\e[34m[zsh]\e[0m\e[37m Change the default shell to zsh\e[0m\n"
    chsh -s $(which zsh)
fi

printf "\e[34m[zsh]\e[0m\e[37m Finished configuring Z shell\e[0m\n\n"

printf "\e[32m###############################################################\e[0m\n"
printf "\e[32m# => Setup vim                                                 \e[0m\n"
printf "\e[32m###############################################################\e[0m\n"

printf "\e[34m[vim]\e[0m\e[37m Copying vimrc template to home directory\e[0m\n"
cpsafe vim/.vimrc.unix ~/.vimrc

if [ ! -d ~/.vimswap ]; then
    printf "\e[34m[vim]\e[0m\e[37m Created directory ~/.vimswap. This directory will contain all the vim swap files\e[0m\n"
    mkdir ~/.vimswap
else
    printf "\e[34m[vim]\e[0m\e[37m ~/.vimswap directory already exists. This directory will be used to store all the vim swap files\e[0m\n"
fi

if [ ! -d ~/.vimbackup ]; then
    printf "\e[34m[vim]\e[0m\e[37m Created directory ~/.vimbackup. This directory will contain all the vim backup files\e[0m\n"
    mkdir ~/.vimbackup
else
    printf "\e[34m[vim]\e[0m\e[37m ~/.vimbackup directory already exists. This directory will be used to store all the vim backup files\e[0m\n"
fi

printf "\e[34m[vim]\e[0m\e[37m Installing NeoBundles\e[0m\n"
vim -c NeoBundleInstall -c q

printf "\e[34m[vim]\e[0m\e[37m Finished configuring vim\e[0m\n\n"
