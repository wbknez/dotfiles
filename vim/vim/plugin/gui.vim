if has("gui_running")
    
    " Set the colorscheme.
    "
    " Use a system default if the desired one is not currently installed.
    try
        colorscheme paper
    catch
        colorscheme desert
    endtry

    " Set the font depending on the operating system.
    if has("gui_gtk2") || has("gui_gtk3")
        set guifont=FiraMono\ 12
    elseif has("gui_win32")
        set guifont=Consolas:h11:cANSI
    endif

    " Remove widgets from user interface.
    set guioptions-=m   " Menu bar.
    set guioptions-=T   " Tool bar.
    set guioptions-=l   " Scroll bar (left).
    set guioptions-=r   " Scroll bar (right).
    set guioptions=L    " Scroll bar (upper left).

    " Try and remove space from the bottom of the editing window.
    set guiheadroom=0

    " Mimic the size of a standard terminal.
    set columns=80
    set lines=40
endif
