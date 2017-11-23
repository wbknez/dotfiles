# -*- mode: shell-script[zsh] -*-
#
# Summary: Ensure that the R user library is created and available as well as
# R-specific aliases.

if [[ ! -d $R_LIBS ]]; then
    warn-msg "(R) R user library directory could not be found."
    confirm-msg "(R) Created R user library directory."
    
    mkdir $R_LIBS
fi

alias R='R --no-restore --no-save'
alias Rs='/usr/bin/Rscript'
alias Rw='/usr/bin/R'
