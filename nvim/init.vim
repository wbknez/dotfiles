" NeoVim configuration.

if &compatible
    set nocompatible
endif

" Adds the package with the specified name to Vim using Minpac.
"
" Arguments:
"   package_name: The name of the package to add.
"   varargs (optional): Additional arguments.
function! PackAdd(package_name, ...) abort
    call minpac#add(a:package_name, get(a:000, 0, {}))
endfunction

" Initializes the Minpac plugin for Vim.
"
" Minpac may be found here:
"   https://github.com/k-takata/minpac
function! PackInit() abort
    packadd minpac
    call minpac#init()
endfunction

" Initializes and configures the Minpac plugin for NeoVim, downloading all
" additional packages as necessary.
function! PackConfigure() abort
    " Initialization.
    call PackInit()

    " Minpac itself.
    call PackAdd('k-takata/minpac', {'type': 'opt'})

    " Additional packages.
    "
    " Languages.
    call PackAdd('octol/vim-cpp-enhanced-highlight') " C++1x support.
    call PackAdd('elixir-editors/vim-elixir')        " Elixir support.
    call PackAdd('dag/vim-fish')                     " Fish shell support.
    call PackAdd('elzr/vim-json')                    " JSON support.
    call PackAdd('JuliaEditorSupport/julia-vim')     " Julia support.
    call PackAdd('vim-python/python-syntax')         " Python support.

    " Typography.
    call PackAdd('tpope/vim-commentary') " Enable/disable block commenting.
    call PackAdd('tpope/vim-endwise')    " Brace/control flow completion.
    call PackAdd('tpope/vim-surround')   " Surrounding text actions.

    " Utilities.
    call PackAdd('tpope/vim-fugitive') " Git version control support.
    call PackAdd('junegunn/fzf.vim')   " Fzf fuzzy searching support.

    " Color schemes.
    call PackAdd('mhartington/oceanic-next') " Oceanic Next.
endfunction

" Minpac-based commands.
command! PackClean call PackConfigure() | call minpac#clean()
command! PackUpdate call PackConfigure() |
    \ call minpac#update('', {'do': 'call minpac#status()'})
command! PackStatus call PackConfigure() | call minpac#status()

