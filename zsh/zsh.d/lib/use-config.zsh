# -*- mode: shell-script[zsh] -*-
#
# Attempts to source a configuration file located in a directory beneath
# ZSH_CONFIG_DIR and passes any additional arguments specified.
#
# Arguments:
#   $1 - The name of the configuration file without an extension.
#   $2 - The folder (located beneath ZSH) in which the file resides.
#   $3 - Any additional arguments to pass to the configuration file (optional).
function use-config() {
    local config_file="$1"
    local folder="$2"
    local arguments="$3"

    local filename=""

    if [[ -n ${folder} ]]; then
	filename="$ZSH_CONFIG_DIR/${folder}/${config_file}.zsh"
    else
	filename="$ZSH_CONFIG_DIR/${config_file}.zsh"
    fi

    if [[ -f ${filename} ]]; then
	source ${filename} ${arguments}
    else
	warn-msg "load-config: Could not load ${filename}... skipping."
    fi
}
