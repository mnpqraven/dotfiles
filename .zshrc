# Download Znap, if it's not there yet.
[[ -f ~/.zsh/zsh-snap/znap.zsh ]] ||
  git clone --depth 1 -- \
    https://github.com/marlonrichert/zsh-snap.git ~/.zsh/zsh-snap

# ZNAP
source ~/.zsh/zsh-snap/znap.zsh
znap source zsh-users/zsh-autosuggestions
znap source zsh-users/zsh-syntax-highlighting
znap eval alacritty 'echo "macchina"'

# OMZ
export ZSH="$HOME/.oh-my-zsh"
plugins=(git common-aliases vi-mode)
source $ZSH/oh-my-zsh.sh

eval "$(zoxide init zsh)"
eval "$(starship init zsh)"

export KEYTIMEOUT=200
# KEYBINDINGS
# bindkeys after sourcing omz !
bindkey '^o' autosuggest-execute
bindkey '^b' backward-word
bindkey '^q' backward-delete-word
bindkey '^[[3~' delete-char
bindkey '^w' forward-word
bindkey -M vicmd '^[[3~' forward-char

# SYNTAX HIGHLIGHTING CONFIGURATION
typeset -A ZSH_HIGHLIGHT_STYLES
ZSH_HIGHLIGHT_STYLES=(main brackets)
ZSH_HIGHLIGHT_STYLES[unknown_token]='fg=yellow'
ZSH_HIGHLIGHT_STYLES[default]='fg=225'
ZSH_HIGHLIGHT_STYLES[builtin]='fg=cyan,bold'
ZSH_HIGHLIGHT_STYLES[arg0]='fg=cyan,bold'
ZSH_HIGHLIGHT_STYLES[command]='fg=cyan,bold'
ZSH_HIGHLIGHT_STYLES[suffix-alias]='fg=cyan,underline'
ZSH_HIGHLIGHT_STYLES[precommand]='fg=cyan,bold'
ZSH_HIGHLIGHT_STYLES[path]='fg=225,underline'
ZSH_HIGHLIGHT_STYLES[single-quoted-argument]='fg=225'
ZSH_HIGHLIGHT_STYLES[double-quoted-argument]='fg=225'

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
[ -f "/home/othi/.ghcup/env" ] && source "/home/othi/.ghcup/env" # ghcup-env
