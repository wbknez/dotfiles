# Summary: Formats 'ls' output with directories first.

function ls -d "Directory ls listing." --wraps "ls"
    /usr/bin/ls --color=auto --group-directories-first --format=horizontal \
        $argv
end
