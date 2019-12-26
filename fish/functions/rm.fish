# Summary: Forces 'rm' to ask when removing large numbers of files and disables
# the deletion of root.

function rm -d "Force rm to use interactive mode." --wraps "rm"
    /usr/bin/rm -I --preserve-root $argv
end
