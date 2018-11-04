" Graphical user interface options (for GVim and Oni).

if has("gui_running")
    
    " Set the colorscheme.
    "
    " Use a system default if the desired one is not currently installed.
    try
        set background=light
        colorscheme PaperColor 
    catch
        colorscheme desert
    endtry

    " Set the font depending on the operating system.
    if has("gui_gtk2") || has("gui_gtk3")
        set guifont=FiraMono\ 12
    elseif has("gui_win32")
        set guifont=Consolas:h11:cANSI
    endif

    set guioptions-=m   " Remove the menu bar.
    set guioptions-=T   " Remove the tool bar.
    set guioptions-=l   " Remove the scroll bar (left).
    set guioptions-=r   " Remove the scroll bar (right).
    set guioptions=L    " Remove the scroll bar (upper left).

    set guiheadroom=0   " Remove the space from the bottom of the window.
    set columns=85      " The number of columns to display.
    set lines=50        " The number of rows to display.
endif
