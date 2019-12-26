# Summary: Forces 'mv' to ask when moving large numbers of files.

function mv -d "Force mv to use interactive mode." --wraps "mv"
    /usr/bin/mv -i $argv
end
