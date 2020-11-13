" Summary: Python-specific configuration.

" Setup Python executable.
"
" This will auto-detect the correct Conda environment.
if !empty($CONDA_DEFAULT_ENV) && !empty($APP_DIR)
    let g:python3_host_prog='$APP_DIR/Conda/bin/python'
endif


" Prevent Jedi from showing function definitions.
setlocal completeopt-=preview

" Prevent Jedi from overlying call signatures.
let g:jedi#show_call_signatures = "0"
