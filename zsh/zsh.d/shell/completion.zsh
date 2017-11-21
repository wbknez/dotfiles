# Summary: Initializes auto-completion for ZSH.

autoload -U compinit
zmodload zsh/complist

# Initialize.
compinit

# When a completion is finished, place the cursor at the end of the completion
# result.
setopt always_to_end

# Prevent Zsh from auto-completing an entry with the first result in the entry
# list.  That is, when hitting <Tab> to view completion entries, Zsh
# automatically completes the line with the first entry returned (if any).
# Unsetting this, as below, prevents this behavior as it can be both annoying
# and dangerous with certain commands.
unsetopt menu_complete

# Completion Styles
#
# Force 'kill' to always show a menu with a process list since anytime a
# completion is requested of 'kill' I am likely hunting for a target.
zstyle ':completion:*:*:kill:*' menu yes select
zstyle ':completion:*:kill:*' force-list always

# Same with 'killall'.
zstyle ':completion:*:*:killall:*' menu yes select
zstyle ':completion:*:killall:*' force-list always
