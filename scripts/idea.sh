#!/usr/bin/env sh

# Shell launch script for IntelliJ IDEA.
#
# Please see the accompanying documentation for more information on how to use
# IntelliJ IDEA.

if [[ ! -d "$HOME/Apps/Idea/bin" ]]; then
    echo -e " \e[1;31m*\e[0m IntelliJ IDEA could not be found.  Please install it and try again."
    exit 1
fi

sh "$HOME/Apps/Idea/bin/idea.sh"
