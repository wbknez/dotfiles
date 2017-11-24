# -*- mode: shell-scripts[zsh] -*-
#
# Summary: Adds Emacs-specific aliases and functions to ZSH.

alias emd='emacs --daemon'
alias emdsch='ps -ef | grep -i 'emacs --daemon''
alias em='emacsclient -t'
alias emx='emacsclient -c -a /usr/bin/emacs'
alias sem='sudo emacsclient -t'
