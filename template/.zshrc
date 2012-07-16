###############################################################
# => oh-my-zsh configuration
###############################################################
export DISABLE_AUTO_UPDATE="true"
export ZSH="$HOME/.oh-my-zsh"
export ZSH_THEME="kennethreitz"
source $ZSH/oh-my-zsh.sh

###############################################################
# => environment 
###############################################################
export EDITOR="vim"
export REPOS="$HOME/Dropbox/repos"
export DOTFILES_VIMDIR="$REPOS/dotfiles/vim"
export NODE_PATH="/usr/local/lib/node_modules"

export PATH="/usr/local/bin:$PATH"
export PATH="/usr/local/sbin:$PATH"
export PATH="/opt/local/bin:$PATH"
export PATH="/opt/local/sbin:$PATH"
export PATH="/bin:$PATH"
export PATH="/sbin:$PATH"
export PATH="/usr/bin:$PATH"
export PATH="/usr/sbin:$PATH"
export PATH="/usr/local/bin:$PATH"
export PATH="/usr/local/sbin:$PATH"

###############################################################
# => aliases 
###############################################################
alias ack-grep=ack
alias vi="vim"
alias la="ls -a"
alias ll="ls -l"
alias lh="ls -h"
alias lla="ls -la"
alias llh="ls -lh"
alias llah="ls -lah"
alias ~="cd $HOME"
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../../"
alias .....="cd ../../../../"
alias reload="source ~/.zshrc"

# Quick edit config files
alias vimrc="$EDITOR $DOTFILES_VIMDIR"
alias zshrc="$EDITOR $HOME/.zshrc"
alias gitconfig="$EDITOR $HOME/.gitconfig"
