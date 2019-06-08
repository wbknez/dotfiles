" Leader configuration.
let mapleader=" "      " Set the leader to be Space.

" Disable default Space binding in normal mode.
" Per StackOverflow:
" https://stackoverflow.com/questions/446269/can-i-use-space-as-mapleader-in-vim
" This is required for using Space as leader.
nnoremap <SPACE> <Nop>
