#!/usr/bin/env sh

# Shell launch script for Zotero.
#
# Please see the accompanying documentation for more information on how to use
# Zotero.

if [[ ! -d "$HOME/Apps/Zotero" ]]; then
    echo -e " \e[1;31m*\e[0m Zotero could not be found.  Please install it and try again."
    exit 1
fi

sh "$HOME/Apps/Zotero/zotero"
