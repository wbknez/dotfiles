# Summary: 
#
# Taken from:
#   https://medium.com/@sidneyliebrand/how-fzf-and-ripgrep-improved-my-workflow-61c7ca212861

function kp -d "Kill one or more processes."
    set -l target_pid (ps -ef | \
                       sed 1d | \
                       eval "fzf $FZF_DEFAULT_OPTS -m --header='[kill:process]'" | \
                       awk '{print $2}')

    if test "x$target_pid" != "x"
        if test "x$argv[1]" != "x"
            echo $target_pid | xargs kill $argv[1]
        else
            echo $target_pid | xargs kill -9
        end
    kp
    end
end
