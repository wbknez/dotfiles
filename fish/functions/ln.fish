# Summary: Forces 'ln' to ask when removing links.

function ln -d "Force ln to use interactive mode." --wraps "ln"
    /usr/bin/ln -i $argv
end
