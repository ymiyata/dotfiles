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

HISTSIZE=SAVEHIST=10000
REPORTTIME=10

