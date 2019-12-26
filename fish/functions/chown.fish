# Summary: Forces 'chown' to preserve root.

function chown -d "Force chown to preseve root permissions." --wrap "chown"
    /usr/bin/chown --preserve-root $argv
end
