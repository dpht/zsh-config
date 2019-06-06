ZSH=$HOME/.oh-my-zsh

# Themes.
ZSH_THEME="oxide"

# Case-sensitive completion.
CASE_SENSITIVE="true"

# Disable bi-weekly auto-update checks.
DISABLE_AUTO_UPDATE="true"

# Disable auto-setting terminal title.
DISABLE_AUTO_TITLE="true"

# Disable marking untracked files under VCS as dirty.
DISABLE_UNTRACKED_FILES_DIRTY="true"

# History.
#HIST_STAMPS="yyyy-mm-dd"

# Plugins.
plugins=(
    archive
    extract
    git
    ubuntu
)

source $ZSH/oh-my-zsh.sh

# dircolors.
if [ -x "$(command -v dircolors)" ]; then
    eval "$(dircolors -b ~/.dircolors)"
fi

# Manage SSH with Keychain.
if [ -x "$(command -v keychain)" ]; then
    eval "$(keychain --eval --quiet id_rsa_github id_rsa_gitlab)"
fi

# Base16 Shell.
[ -n "$PS1" ] && [ -s "$BASE16_SHELL/profile_helper.sh" ] && eval "$("$BASE16_SHELL/profile_helper.sh")"

bindkey "[D" backward-word
bindkey "[C" forward-word
code () { VSCODE_CWD="$PWD" open -n -b "com.microsoft.VSCode" --args $* ;}

#flutter
export PATH=$PATH:$HOME/flutter/bin

#go
export PATH=${HOME}/go/bin:$PATH
