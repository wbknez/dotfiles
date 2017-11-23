# -*- mode: shell-script[zsh] -*-
#
# Summary: Add Ruby-specific aliases and capabilities to ZSH via rbenv.

if [[ ! -z "$RB_ENV_HOME" && -d "$RB_ENV_HOME" ]]; then
    path=($RB_ENV_HOME/bin $path)
    eval "$(rbenv init -)"
else
    warn-msg "Could not find RB_ENV_HOME."
    warn-msg "Failed to initialize Ruby configuration for ZSH."
fi

alias rbinst='rbenv install'
alias rblst='rbenv install --list'
