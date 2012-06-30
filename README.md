ymiyata/dotfiles
========

Information
--------
This repository contains all of my dotfiles

- Vim

How to Setup
--------
1. git clone git@github.com:ymiyata/dotfiles.git
2. cd ./dotfiles
3. Edit .vimrc.unix or .vimrc.win depending on your OS
 - Set $VIMDIR to directory of your dotfiles/vim directory (default is $HOME/dotfiles/vim)
4. Use .vimrc.unix or .vimrc.win as the ~/.vimrc file
 - cp .vimrc.unix ~/.vimrc (for Unix)
 - cp .vimrc.win ~/_vimrc (for Windows)
5. git submodule init
6. git submodule update
7. vim
8. :NeoBundleInstall!
