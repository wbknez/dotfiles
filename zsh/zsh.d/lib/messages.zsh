# -*- mode: shell-script[zsh] -*-
#
# Summary: Contains utility functions to print Gentoo Portage style messages
# to the console with colored asterisks to denote message type.

# Prints a confirmation message; that is, an arbitrary message string
# is preceeded by a green asterisk (Gentoo style).
#
# Arguments:
#   $@ - The message to write.
confirm-msg() {
    echo -e " \e[1;32m*\e[0m $@"
}

# Prints an error message; that is, an arbitrary message string is
# preceeded by a red asterisk (Gentoo style).
#
# Arguments:
#   $@ - The message to write. 
error-msg() {
    echo -e " \e[1;31m*\e[0m $@"
}

# Prints a warning message; that is, an arbitrary message string is
# preceeded by a yellow asterisk (Gentoo style).
#
# Arguments:
#   $@ - The message to write.
warn-msg() {
    echo -e " \e[1;33m*\e[0m $@"
}
