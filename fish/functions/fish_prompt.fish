# Summary: Create custom main Fish shell prompt (left-side only).

function fish_prompt -d "Custom main terminal prompt."
    set -l git_prompt ""
    set -l ssh_prompt ""
    set -l uid_prompt ">"

    set -l git_color (set_color -o red)
    set -l ssh_color (set_color -o green)
    set -l uid_color (set_color normal)

    if test -d .git; or command git rev-parse --git-dir >/dev/null ^/dev/null
        set git_prompt ">"
    end
    
    if test -n "$SSH_CLIENT"; or test -n "$SSH_TTY"
        set ssh_prompt ">"
    end

    if test (id -u) -eq 0
        set uid_color (set_color -o red)
    end

    echo " $ssh_color$ssh_prompt$uid_color$uid_prompt$git_color$git_prompt "
end

