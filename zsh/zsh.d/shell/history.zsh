# Summary: Initializes the history file and associated configuration options
# for ZSH.

if [[ ! -d $ZSH_CACHE_HOME ]]; then
    mkdir -p $ZSH_CACHE_HOME
fi

if [[ -z $HISTFILE ]]; then
    HISTFILE=$ZSH_CACHE_HOME/history
fi

HISTSIZE=2000
SAVEHIST=2000

# Allow multiple Zsh instances to append to a single file.
setopt append_history

# Make ZSH format the history with additional information, such as the
# timestamp.
setopt extended_history

# Delete oldest duplicate entries (if any) from the history file first
# when the file becomes full.
setopt hist_expire_dups_first

# Prevent a history search from displaying duplicate commands.
setopt hist_find_no_dups

# Ignore duplicate entries.
setopt hist_ignore_dups

# A command that is prefixed with a space (empty character) will not
# be included in the history file.  This is useful for experimentation
# with new commands and whatnot.
setopt hist_ignore_space

# Do not store any manually-input functions.  Scripts are a better
# medium for that.
setopt hist_no_functions

# Prune excess whitespace from history.
setopt hist_reduce_blanks

# Expand any history that contains an expansion (!) instead of
# executing it immediately.
setopt hist_verify

# Force ZSH to store commands in the history file as they are typed,
# instead of after the shell closes (exits).  This is mandatory for
# people who tend to have various shells open on different desktops
# for various reasons and never close them.
setopt inc_append_history

# Imports new commands from the history file (such as those typed in 
# other sessions).
setopt share_history
