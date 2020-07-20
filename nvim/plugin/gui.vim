" Summary: Configuration of the visual (graphical) user interface.

if has('termguicolors')
    set termguicolors   " Enable true color support in terminal.
endif

if !exists('g:GtkGuiLoaded')
    set background=dark     " Enable dark background.
    colorscheme OceanicNext " Oceanic Next (!).
endif
