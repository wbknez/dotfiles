# Summary: Creates and configures user-specific environment variables.

# XDG Specification.
set -g -x XDG_CACHE_HOME "$HOME/.cache"
set -g -x XDG_CONFIG_HOME "$HOME/.config"
set -g -x XDG_DATA_HOME "$HOME/.local/share"

# System variables.
set -g -x BROWSER "/usr/bin/firefox"
set -g -x EDITOR "/usr/bin/nvim"
set -g -x PAGER "/usr/bin/less"
set -g -x VISUAL $EDITOR

# User directories.
set -g -x APP_DIR "$HOME/Apps"
set -g -x BIN_DIR "$HOME/bin"

# User applications.
set -g -x CONDA_HOME "$APP_DIR/Conda"
set -g -x CONDARC "$XDG_CONFIG_HOME/conda/condarc"
set -g -x GIMP2_DIRECTORY "$XDG_CONFIG_HOME/gimp"
set -g -x GNUPGHOME "$XDG_CONFIG_HOME/gnupg"
set -g -x GRADLE_HOME "$APP_DIR/Gradle"
set -g -x GRADLE_USER_HOME "$XDG_DATA_HOME/gradle"
set -g -x M2_HOME "$APP_DIR/Maven"
set -g -x M2 "$M2_HOME/bin"
set -g -x PIP_DOWNLOAD_CACHE "$XDG_CACHE_HOME/pip"
set -g -x RANDFILE "$XDG_RUNTIME_DIR/rnd"
set -g -x TMUX_TEMPDIR "$XDG_RUNTIME_DIR/tmux"

# Path.
set -g fish_user_paths $BIN_DIR $CONDA_HOME/bin $GRADLE_HOME/bin $M2 $fish_user_paths
