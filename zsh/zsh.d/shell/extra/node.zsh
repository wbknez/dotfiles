# -*- mode: shell-script[zsh] -*-
#
# Summary: Initializes Node Version Manager and adds aliases for Node.js.

# Loads NVM by sourcing its initialization file.
#
# This function may be also be called to reload NVM in a current shell.
function nvm-load() {
    if [[ -s "$NVM_DIR/nvm.sh" ]]; then
        source "$NVM_DIR/nvm.sh" --no-use
    else
        error-msg "NVM is not installed."
    fi
}

# Checks to see if the current NVM installation is out of date and, if so, pulls
# the latest changes from upstream.
#
# The core of this function is taken from the ZSH NVM Plugin found here:
#   https://github.com/lukechilds/zsh-nvm
function nvm-update() {
    if [[ ! -d "$NVM_DIR" ]]; then
        error-msg "NVM is not installed."
        exit
    fi
    
    local installed_version=$(cd "$NVM_DIR" && git describe --tags)
    local upstream_version=$(cd "$NVM_DIR" && git fetch --quiet origin && git describe --abbrev=0 --tags --match "v[0-9]*" origin)
    
    if [[ "$installed_version" != "$upstream_version" ]]; then
        echo "Updating NVM to version $upstream_version..."
        $(cd "$NVM_DIR" && git fetch --quiet && git checkout "$upstream_version")
        echo "Reloading NVM..."
        nvm-load
        confirm-msg "NVM updated successfully."
    else
        confirm-msg "NVM $installed_version is up to date."
    fi    
}

nvm-load

alias node-install='nvm install node'
alias node-migrate='nvm install node --reinstall-packages-from=node'
