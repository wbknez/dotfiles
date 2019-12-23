" Backup and save configuration.
set nobackup writebackup    " Enable backups when writing only.
set undofile                " Enable undo files.

set directory=$HOME/.local/share/nvim/swap// " The directory for backup files.
set undodir=$HOME/.local/share/nvim/undo//   " The directory for undo files.

if !isdirectory(&directory)
    call mkdir(&directory, 'p')
endif

if !isdirectory(&undodir)
    call mkdir(&undodir, 'p')
endif

" Save all buffers upon losing focus.
au FocusLost * :wa

