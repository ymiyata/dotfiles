ymiyata/dotfiles
========

Information
--------
This repository contains all of my dotfiles

- Vim

How to Setup
--------
1. git clone git://github.com/ymiyata/dotfiles.git
2. cd ./dotfiles
3. Edit .vimrc.unix or .vimrc.win depending on your OS
 - Set $VIMDIR to directory of your dotfiles/vim directory (default is $HOME/dotfiles/vim)
4. Use .vimrc.unix or .vimrc.win as the ~/.vimrc file
 - cp .vimrc.unix ~/.vimrc (for Unix)
 - cp .vimrc.win ~/_vimrc (for Windows)

####Setup Vim Plugins####
From ./dotfiles directly run:

1. git submodule init
2. git submodule update
3. vim
4. :NeoBundleInstall
5. cd vim/bundle/vimproc
6. make -f make_xxx.mak (where xxx is your OS. Read vim/bundle/vimproc/doc/vimproc.txt's "INSTALL" section for more detail)