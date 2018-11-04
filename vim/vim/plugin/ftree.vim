" NetRW configuration.
let g:netrw_banner = 0         " Remove the banner from the top of a buffer.
let g:netrw_browse_split = 4    " Open a file in the previous buffer or window.
let g:netrw_liststyle = 3       " Default list view is a tree.
let g:netrw_winsize = 20        " Allow NetRW to use 20% of a window's space.

" Prevent NetRW from asking if its buffer should be saved.
autocmd FileType netrw setl bufhidden=delete
