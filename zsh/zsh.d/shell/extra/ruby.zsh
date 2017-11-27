# -*- mode: shell-script[zsh] -*-
#
# Summary: Add Ruby-specific aliases and capabilities to ZSH via rbenv.

# Loads rbenv by sourcing its initialization file.
#
# This function may also be called to reload rbenv in a current shell.
function rbenv-load() {
    if [[ ! -z $"RB_ENV_HOME" && -d "$RB_ENV_HOME" ]]; then
        path=($RB_ENV_HOME/bin $path)
        eval "$(rbenv init -)"
    else
        error-msg "rbenv is not installed."
    fi
}

# Checks to see if the current rbenv installation is out of date and, if so,
# pulls the latest changes from upstream.
function rbenv-update() {
    if [[ ! -d "$RB_ENV_HOME" ]]; then
        error-msg "rbenv is not installed."
        exit
    fi

    local RUBY_BUILD_DIR="$RB_ENV_HOME/plugins/ruby-build"
    
    if [[ -d "$RUBY_BUILD_DIR" ]]; then
            local rbuild_installed=$(cd "$RUBY_BUILD_DIR" && git describe --tags)
            local rbuild_upstream=$(cd "$RUBY_BUILD_DIR" && git fetch --quiet origin && git describe --abbrev=0 --tags --match "v[0-9]*" origin)

            if [[ "$rbuild_installed" != "$rbuild_upstream" ]]; then
                echo "Updating ruby-build to version $rbuild_upstream..."
                $(cd "$RUBY_BUILD_DIR" && git fetch --quiet && git checkout "$rbuild_upstream")
                confirm-msg "ruby-build updated successfully."
            else
                confirm-msg "ruby-build $rbuild_installed is up to date."
            fi
    fi
    
    local installed_version=$(cd "$RB_ENV_HOME" && git describe --tags)
    local upstream_version=$(cd "$RB_ENV_HOME" && git fetch --quiet origin && git describe --abbrev=0 --tags --match "v[0-9]*" origin)
    
    if [[ "$installed_version" != "$upstream_version" ]]; then
        echo "Updating rbenv to version $upstream_version..."
        $(cd "$RB_ENV_HOME" && git fetch --quiet && git checkout "$upstream_version")
        echo "Reloading rbenv..."
        rbenv-load
        confirm-msg "rbenv updated successfully."
    else
        confirm-msg "rbenv $installed_version is up to date."
    fi
}

rbenv-load

alias rbinst='rbenv install'
alias rblst='rbenv install --list'
