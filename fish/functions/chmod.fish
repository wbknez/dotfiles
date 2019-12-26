# Summary: Forces 'chmod' to preserve root.

function chmod -d "Force chmod to preseve root permissions." --wrap "chmod"
    /usr/bin/chmod --preserve-root $argv
end
