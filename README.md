#ymiyata/dotfiles

##Information
This repository contains all of my dotfiles. It contains configuration for:

- vim
- bash
- zsh 
- git

##How to Setup on Unix Environment
1. git clone git://github.com/ymiyata/dotfiles.git
2. cd ./dotfiles
3. ./setup.sh
4. Logout and log back in (.profile, .bash_profile, and .zprofile get loaded on login)

##How to Setup on Windows Environment
Note that on Windows it only configures Vim and nothing else. 

Open bash (cygwin, Git Bash, ...) and execute:

1. git clone git://github.com/ymiyata/dotfiles.git
2. cd ./dotfiles
3. Edit .vimrc.win
 - Set $VIMDIR to directory of your dotfiles\vim directory (default is $HOME\dotfiles\vim)
4. bash setup-win.sh
