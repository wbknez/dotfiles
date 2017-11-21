# Summary: Initializes the user prompt for ZSH.

# My terminal prompt.
#
# There are 3 "layers", each corresponding to a different ">" and position.
#
#   (2)
#    |
#   >>> [command]
#   | |
#   | (3)
#  (1)
#
# (1) SSH indicator: a green ">" is displayed when I am currently logged in to
# another machine using SSH.  Otherwise nothing is shown.
#
# (2) User indicator: a white ">" is displayed when I am logged in as a
# normal user and a light red ">" is displayed when I am logged - or have
# escalated privileges to - root.
#
# (3) VCS indicator: a red ">" is displayed when I am in a Git repository and
# a light blue ">" is displayed when I am in an Hg repository.

# Load and initialize required libraries.
autoload -U colors && colors
autoload -Uz vcs_info

# Allow function substitution.
setopt prompt_subst

# (1) Determine if we are (currently) using SSH.
if [[ ! -z "$SSH_CLIENT" ]]; then
    ssh_prompt="%{$fg_bold[green]%}>%{$reset_color%}"
else
    ssh_prompt=""
fi

# (2) Determine who the user is (user or root).
if [[ $UID != 0 ]]; then
    user_prompt="%{$fg_bold[white]%}>%{$reset_color%}"
else
    user_prompt="%{fg_bold[red]%}>%{$reset_color%}"
fi

# (3) Determine VCS information.
#
# (3a) Configure VCS display.
zstyle ':vcs_info*' enable hg git svn
zstyle ':vcs_info*' use-simple true
zstyle ':vcs_info:git*' formats "%{$fg_bold[red]%}>%{$reset_color%}"
zstyle ':vcs_info:hg*'  formats "%{$fg_bold[cyan]%}>%{$reset_color%}"
zstyle ':vcs_info:svn*' formats "%{$fg_bold[yellow]%}>%{$reset_color%}"

# (3b) Add vcs_info to a pre-prompt command.
function precmd() {
    vcs_info
}

export PROMPT=' ${ssh_prompt}${user_prompt}${vcs_info_msg_0_} '
