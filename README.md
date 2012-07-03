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

####Setup Vim Plugins
From ./dotfiles directly run:

1. ./setup.sh (setup.sh initializes and updates git submodules and creates vim backup and swap directory in the home directory)
2. vim
3. :NeoBundleInstall
4. cd vim/bundle/vimproc
5. make -f make_xxx.mak (where xxx is your OS. Read vim/bundle/vimproc/doc/vimproc.txt's "INSTALL" section for more detail)
