#ymiyata/dotfiles

##Information
This repository contains all of my dotfiles. It contains configuration for:

- vim
- bash
- zsh 
- git

##How to Setup on Unix Environment

    git clone git://github.com/ymiyata/dotfiles.git
    cd ./dotfiles
    ./setup.sh

Logout and log back in (.profile gets loaded on login)

##How to Setup on Windows Environment
Note that on Windows it only configures Vim and nothing else. 

Open bash (cygwin, Git Bash, ...) and execute:

    git clone git://github.com/ymiyata/dotfiles.git
    cd ./dotfiles

Edit .vimrc.win
Set $VIMDIR to directory of your dotfiles\vim directory (default is $HOME\dotfiles\vim). Complete the setup by running

    bash setup-win.sh
