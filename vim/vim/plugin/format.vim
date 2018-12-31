" General formatting configuration.
set encoding=utf8    " Use UTF-8 encoding.
set ffs=unix,dos,mac " Set Unix as the default file type.
set textwidth=80     " Wrap at 80 characters.
set wrap             " Enable word wrapping.

" Automatic formatting configuration.
set formatoptions+=c " Wrap comment lines.
set formatoptions+=j " Delete any/all commenting characters when joining.
set formatoptions+=n " Indent numbered lists.
set formatoptions+=o " Add any/all comment characters to new lines.

" Backspace configuration.
set backspace=indent,eol,start  " Fix backspace behavior.

" Indentation configuration.
set autoindent       " Enable auto-indent.
set smartindent      " Enable "smart" indent per file type.

" Tab configuration.
set expandtab        " Automatically convert all tabs to spaces.
set smarttab         " Enable "smart" tabs per file type.
set softtabstop=4    " The number of spaces to insert when tabs are expanded.
set shiftwidth=4     " The number of spaces to use with ">" and "<" commands.
set tabstop=4        " The number of spaces to use when viewing a tab.
