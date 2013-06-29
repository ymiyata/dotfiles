# ~/.profile executed by the command interpreter for login shells..
# This file is not read by tht bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
echo "Sourcing $0"

export DOTFILES_VIMDIR="$DOTFILES_DIR/vim"
export DOTFILES_SHDIR="$DOTFILES_DIR/sh"

source $DOTFILES_SHDIR/profile.sh
if [[ -f ~/.profile_local ]]; then
    source ~/.profile_local
fi
