" NeoVim Graphical configuration.

" NeoVim-GTK
if exists('g:GtkGuiLoaded')
    GuiFont Fira Code Medium:h16
endif

try
    set background=dark " Enable dark background.
    colorscheme ayu     " Ayu (!).
catch
endtry
