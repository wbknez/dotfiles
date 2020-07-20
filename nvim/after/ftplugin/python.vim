" Summary: Addition configuration for Python files.

" Force highlighting of all Python syntax.
let g:python_highlight_all = 1

" Setup Python executable.
"
" This will auto-detect the correct Conda environment.
if !empty($CONDA_DEFAULT_ENV) && !empty($APP_DIR)
    let g:python3_host_prog='$APP_DIR/Conda/bin/python'
endif

