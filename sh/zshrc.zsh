###############################################################
# => oh-my-zsh configuration
###############################################################
plugins=(brew git mvn node npm osx pip vi-mode)
export DISABLE_AUTO_UPDATE="true"
export ZSH="$HOME/.oh-my-zsh"
source $ZSH/oh-my-zsh.sh

###############################################################
# => zsh vi mode settings (
###############################################################
bindkey -v
bindkey -M viins 'jj' vi-cmd-mode

###############################################################
# => zsh vi mode theme (modified kennethreitz.zsh-theme)
###############################################################
INSERT_MODE_INDICATOR="%{$fg[red]%}-- INSERT --%{$reser_color%}"
NORMAL_MODE_INDICATOR="%{$fg[yellow]%}-- NORMAL --%{$reser_color%}"
function vi_mode_prompt_info() {
    echo "${${KEYMAP/vicmd/$NORMAL_MODE_INDICATOR}/(main|viins)/$INSERT_MODE_INDICATOR}"
}

local return_code="%(?..%{$fg[red]%}%? ↵%{$reset_color%})"

PROMPT='%{$fg[green]%}%c \
$(git_prompt_info)\
%{$fg[red]%}%(!.#.»)%{$reset_color%} '
PROMPT2='%{$fg[red]%}\ %{$reset_color%}'
RPS1='$(vi_mode_prompt_info) \
%{$fg[blue]%}%~%{$reset_color%} ${return_code}'

ZSH_THEME_GIT_PROMPT_PREFIX="%{$reset_color%}:: %{$fg[yellow]%}("
ZSH_THEME_GIT_PROMPT_SUFFIX=")%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_CLEAN=""
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[red]%}*%{$fg[yellow]%}"

###############################################################
# => zsh specific configuration 
###############################################################
setopt extended_glob
unsetopt correct

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