#ymiyata/dotfiles

##Information
This repository contains all of my dotfiles

- Vim

##How to Setup on Unix Environment
1. git clone git://github.com/ymiyata/dotfiles.git
2. cd ./dotfiles
3. Edit .vimrc.unix
 - Set $VIMDIR to directory of your dotfiles/vim directory (default is $HOME/dotfiles/vim)

####Setup Vim
From ./dotfiles run:

1. sh setup.sh
2. vim
3. :NeoBundleInstall
4. cd vim/bundle/vimproc
5. make -f make_xxx.mak (where xxx is your OS. Read vim/bundle/vimproc/doc/vimproc.txt's "INSTALL" section for more detail)

##How to Setup on Windows Environment
Open bash (cygwin, Git Bash, ...) and execute:

1. git clone git://github.com/ymiyata/dotfiles.git
2. cd ./dotfiles
3. Edit .vimrc.win
 - Set $VIMDIR to directory of your dotfiles\vim directory (default is $HOME\dotfiles\vim)

####Setup Vim Plugins
From ./dotfiles run:

1. sh setup-win.sh
2. vim
3. :NeoBundleInstall
