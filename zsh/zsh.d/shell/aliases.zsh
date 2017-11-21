# Summary: Initialze all general-use aliases for ZSH.

alias ls=' ls --color=auto'
alias ll='ls -la'
alias l.='ls -d .*'

alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

# The following are general "safety net" aliases.  Despite how ungeeky
# it may seem to have them, they have saved me from egregious
# stupidity in the early hours of the morning on more than one
# occassion.  As such, given that I do a lot of work at such times and
# in a, shall we say, less than ideal state of mind it seems prudent
# to have 'em around.
alias chgrp='chgrp --preserve-root'
alias chmod='chmod --preserve-root'
alias chown='chown --preserve-root'
alias cp='cp -i'
alias ln='ln -i'
alias mv='mv -i'
alias rm='rm -I --preserve-root'

# Mimic the 'tree' command by using ls.
alias lsd='find ./ -type d -print | sed -e "s;[^/]*/; /;g;s;/ ;    ;g;s;^ /$;.;;s; /;|-- ;g"'

# Aliases for changing directories quickly.
alias ..=' cd ..'
alias cd..=' cd ..'
alias cd...=' cd ../..'
alias cd....=' cd ../../..'
alias cd.....=' cd ../../../..'

# Man page aliases.
alias 1='man 1'     # General commands.
alias 2='man 2'     # System calls.
alias 3='man 3'     # Library functions.
alias 4='man 4'     # Special files.
alias 5='man 5'     # File formats and conventions.
alias 6='man 6'     # Games and screensavers.
alias 7='man 7'     # Miscellaneous.
alias 8='man 8'     # System administration commands and daemons.
alias ms='man -a'   # Show all potential pages.

# Reload Zsh's configuration.
# Mash with extreme prejudice.
alias zrec='source $HOME/.zshrc'

# Reload Zsh's environment configuration.
alias zree='source $HOME/.zshenv'

# Reload both the environment and shell configuration.
alias zrea='zree && zrec'

# Laziness.
alias vi='vim'

# From all my years on Windows, as I've apparently suffered severe
# brain damage.
alias notepad='$EDITOR'

# For when my modem decides to flake out on me.
alias ping-check='ping -c 5 www.google.com'

# Get a memory report.
alias meminfo='free -m -l -t'

# Resume a wget download.
alias wget-resume='wget -c'

# Default browser is Firefox.
alias browser='$BROWSER'

# Bunzip2 is the successor to bunzip.  Older systems, however, may
# have the older version.  The script function ex (aliased to exf)
# expects bunzip so this ensures both cases are covered.
if [[ -n "$(command -v bunzip2)" ]]; then
    alias bunzip='bunzip2'
fi

# Program aliases.
#
# These are programs that typically look for configuration files in ~/ but I am
# forcing them to use XDG_CONFIG_DIR instead.
alias ledger='ledger --init-file ~/.config/ledger/ledgerrc'
alias ncmpcpp='ncmpcpp -c $HOME/.config/ncmpcpp/config'
alias tmux='tmux -f $HOME/.config/tmux/tmux.conf'

# Music player!
alias tunes='ncmpcpp'

# Portage (Gentoo).
if [[ -n "$(command -v emerge)" ]]; then
    alias eclean='sudo emerge -a --depclean'
    alias einst='sudo emerge -av'
    alias epret='emerge -pv'
    alias erem='sudo emerge -av --unmerge'
    alias esch='emerge --search'
    alias eupt='sudo emerge -auND world'
    alias esync='sudo emerge --sync'
    alias lcheck='revdep-rebuild -p'
fi

# Dnf (Fedora).
if [[ -n "$(command -v dnf)" ]]; then
    alias dnf='dnf --color=always'
    alias dclean='sudo dnf clean all'
    alias ddep='dnf provides'
    alias dinst='sudo dnf install'
    alias dpre='sudo dnf --assumeno install'
    alias drem='sudo dnf remove'
    alias dsch='dnf search'
    alias dupt='sudo dnf update'
    alias dsync='dnf check-update'

    # Performs a full cache clean before updating.
    # This is useful to eliminate annoying inconsistencies when dealing with
    # PackageKit, for example.
    alias dupall='sudo dnf --refresh update'
fi
