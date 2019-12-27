# Summary: Show hidden files in a directories.

function l. -d "View hidden files." --wrap "ls"
    set -l target $argv/.?*

    if test -z $argv
        set target .?*
    end

    ls -d $target
end
