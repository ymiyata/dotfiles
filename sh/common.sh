###############################################################
# => environment 
###############################################################
export EDITOR="vim"

###############################################################
# => aliases 
###############################################################
alias ack-grep=ack
alias vi="vim"
alias la="ls -a"
alias ll="ls -l"
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
