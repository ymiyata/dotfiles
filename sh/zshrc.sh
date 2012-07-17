###############################################################
# => oh-my-zsh configuration
###############################################################
export DISABLE_AUTO_UPDATE="true"
export ZSH="$HOME/.oh-my-zsh"
export ZSH_THEME="kennethreitz"
source $ZSH/oh-my-zsh.sh

###############################################################
# => zsh specific configuration 
###############################################################
autoload -U compinit
compinit

zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'

setopt complete_in_word
setopt share_history
setopt extended_history
setopt inc_append_history
setopt extended_glob # More powerful globbing
setopt auto_cd
unsetopt correct
unsetopt correct_all

HISTSIZE=SAVEHIST=10000
REPORTTIME=10

###############################################################
# => zsh suffix aliases 
###############################################################
alias -s c=vim
alias -s cc=vim
alias -s cpp=vim
alias -s coffee=vim
alias -s html=vim
alias -s java=vim
alias -s js=vim
alias -s m=vim
alias -s markdown=vim
alias -s md=vim
alias -s pl=vim
alias -s py=vim
alias -s scala=vim
alias -s sh=vim
alias -s rb=vim
alias -s tex=vim
alias -s txt=vim

alias -s gz="tar -xvzf"
alias -s tar="tar -xvf"
alias -s zip=unzip
