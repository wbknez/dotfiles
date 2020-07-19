# Summary: Creates and configures user-specific environment variables.

# XDG Specification.
set -gx XDG_CACHE_HOME "$HOME/.cache"
set -gx XDG_CONFIG_HOME "$HOME/.config"
set -gx XDG_DATA_HOME "$HOME/.local/share"

# System variables.
set -gx BROWSER "/usr/bin/firefox"
set -gx EDITOR "/usr/bin/nvim"
set -gx PAGER "/usr/bin/less"
set -gx VISUAL $EDITOR

# User directories.
set -gx APP_DIR "$HOME/Apps"
set -gx BIN_DIR "$HOME/bin"

# User applications.
set -gx CONDA_HOME "$APP_DIR/Conda"
set -gx CONDARC "$XDG_CONFIG_HOME/conda/condarc"
set -gx FZF_DEFAULT_COMMAND 'rg --files --no-ignore-vcs --hidden'
set -gx GIMP2_DIRECTORY "$XDG_CONFIG_HOME/gimp"
set -gx GNUPGHOME "$XDG_CONFIG_HOME/gnupg"
set -gx GRADLE_HOME "$APP_DIR/Gradle"
set -gx GRADLE_USER_HOME "$XDG_DATA_HOME/gradle"
set -gx M2_HOME "$APP_DIR/Maven"
set -gx M2 "$M2_HOME/bin"
set -gx NPM_CONFIG_USERCONFIG "$XDG_CONFIG_HOME/npm/npmrc"
set -gx NPM_PACKAGES "$XDG_DATA_HOME/npm"
set -gx NVIM_GTK_RUNTIME_PATH="/usr/local/share/nvim-gtk/runtime"
set -gx PIP_DOWNLOAD_CACHE "$XDG_CACHE_HOME/pip"
set -gx RANDFILE "$XDG_RUNTIME_DIR/rnd"
set -gx TMUX_TEMPDIR "$XDG_RUNTIME_DIR/tmux"

# Path.
set -g fish_user_paths $BIN_DIR $CONDA_HOME/bin \
                       $GRADLE_HOME/bin \
                       $M2 \
                       $NPM_PACKAGES/bin \
                       $fish_user_paths
