# Summary: Show hidden files in a single directory.

function l. -d "View hidden files in a directory." --wrap "ls"
    set -l argc (count $argv)

    set -l options $argv
    set -l target .?*

    if test $argc -gt 1
        set options $argv
        set target

        for i in (seq 1 $argc)
            if test -d $argv[$i]
                set target $argv[$i]/.?*
                set --erase options[$i]

                break
            end
        end
    else if test $argc -eq 1; and test -d $argv
        set options
        set target $argv/.?*
    end

    ls -d $options $target
end
