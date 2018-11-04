" Search-specific configuration.
set incsearch       " Enable incremental search.
set hlsearch        " Enable highlighting of search results.
set ignorecase      " Enable case-insensitive searching.
set showmatch       " Enable brace/paren matching. 
set smartcase       " Enable case-sensitive searching when cases are used.
set wrapscan        " Enable search wrapping around a document.

" Search-specific key-bindings.
"
" Clear highlighting from any current search results in a document.
nnoremap <silent> <C-l> :nohlsearch<Return><C-l>

" Disable Vim-style regex handling for all inputs in normal mode.
nnoremap / /\v
" Same as above but for visual mode.
vnoremap / /\v
