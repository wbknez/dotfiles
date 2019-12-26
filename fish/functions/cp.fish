# Summary: Forces 'cp' to ask when copying large numbers of files.

function cp -d "Force cp to use interactive mode." --wraps "cp"
    /usr/bin/cp -i $argv
end
