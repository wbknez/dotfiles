# Summary: Force Tmux to use XDG configuration.

function tmux -d "Launch terminal multiplexer." --wraps "tmux"
    /usr/bin/tmux -f "$XDG_CONFIG_HOME/tmux/tmux.conf" $argv
end
