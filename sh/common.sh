echo "Sourcing $0"

###############################################################
# => environment 
###############################################################
if [[ -d /Applications/MacVim.app/ ]]; then
    export EDITOR="/Applications/MacVim.app/Contents/MacOS/Vim"
else
    export EDITOR="vim"
fi

###############################################################
# => aliases 
###############################################################
alias vi="vim"
if [[ -d /Applications/MacVim.app ]]; then
    alias vim="/Applications/MacVim.app/Contents/MacOS/Vim"
fi
alias l="ls -la"
alias ll="ls -l"
alias lsa="ls -lah"
alias sl=ls
alias ~="cd $HOME"
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../../"
alias .....="cd ../../../../"
alias reload="source ~/.zshrc"
alias rm="rm -i"

# Jump to dotfiles directory
alias dotfiles="cd $DOTFILES_DIR"
# Quick edit config files
alias profile="$EDITOR $DOTFILES_SHDIR/profile.sh"
alias commonrc="$EDITOR $DOTFILES_SHDIR/common.sh"
alias bashrc="$EDITOR $DOTFILES_SHDIR/bashrc.sh"
alias vimrc="$EDITOR $DOTFILES_VIMDIR"
alias zshrc="$EDITOR $DOTFILES_SHDIR/zshrc.zsh"
alias gitconfig="$EDITOR $HOME/.gitconfig"
