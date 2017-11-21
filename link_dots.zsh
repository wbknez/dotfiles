#!/usr/bin/env zsh
#
# Summary: Links, or installs, all of the dotfiles in this repository to their
# intended locations in the HOME directory.
#
# Arguments:
#   --overwrite - Force this script to overwrite any dot files or links that
#   already exist.

# Print usage if needed.
if [[ $1 == "--help" ]]; then
    echo "link_dots [ARGS]..."
    echo "Link dotfiles for numerous services to this user's home directory."
    echo ""
    echo "    --help         Print this message."
    echo "    --overwrite    Forcefully delete existing links."
    exit
fi

# Whether or not to overwrite current symlinks.
FORCE=0

if [[ $1 == "--overwrite" ]]; then
    FORCE=1
fi

# Load dependencies.
source "install_scripts/messages.zsh"
source "install_scripts/check_and_link.zsh"
source "install_scripts/check_directory_structure.zsh"

# General directory structure.
echo "Checking directory structure..."
check_directory_structure $FORCE

# Git configuration.
echo "Linking Git configuration..."


# i3 configuration.
echo "Linking i3 configuration..."

# Mercurial configuration.
echo "Linking Mercurial configuration..."

# R configuration.
echo "Linking R configuration..."
check_and_link .Renviron R/Renviron $FORCE
check_and_link .Rprofile R/Rprofile $FORCE

# ZSH configuration.
echo "Linking ZSH configuration..."
check_and_link .zshrc zsh/zshrc $FORCE
check_and_link .zshenv zsh/zshenv $FORCE
check_and_link .zlogout zsh/zlogout $FORCE
check_and_link .zsh.d zsh/zsh.d $FORCE
