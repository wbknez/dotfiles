# Summary: Configures Fish shell.

# Directory manipulation.
function ..;    cd ..; end          # Up a single level.
function ...;   cd ../..; end       # Up two levels.
function ....;  cd ../../..; end    # Up three levels.
function .....; cd ../../../..; end # Up four levels.

if test -d $CONDA_HOME; and test -f $CONDA_HOME/bin/conda
    # >>> conda initialize >>>
    # !! Contents within this block are managed by 'conda init' !!
    eval /home/will/Apps/Conda/bin/conda "shell.fish" "hook" $argv | source
    # <<< conda initialize <<<
end
