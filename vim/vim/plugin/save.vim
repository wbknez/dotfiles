" Backup and save configuration.
set nobackup writebackup    " Enable backups when writing only.
set undofile                " Enable undo files.

set directory=$HOME/.local/share/vim/swap// " The directory for backup files.
set undodir=$HOME/.local/share/vim/undo//   " The directory for undo files.

if !isDirectory(&directory)
    call mkdir(&directory, 'p')
endif

if !isDirectory(&undodir)
    call mkdir(&undodir, 'p')
endif

" Save all buffers upon losing focus.
au FocusLost * :wa
