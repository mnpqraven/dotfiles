# Download Znap, if it's not there yet.
[[ -f ~/.zsh/zsh-snap/znap.zsh ]] ||
  git clone --depth 1 -- \
    https://github.com/marlonrichert/zsh-snap.git ~/.zsh/zsh-snap
source ~/.zsh/zsh-snap/znap.zsh
export ZSH="$HOME/.oh-my-zsh"
plugins=(git common-aliases vi-mode)
source $ZSH/oh-my-zsh.sh
zstyle ':omz:update' frequency 7
# if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
#   source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
# fi
eval "$(zoxide init zsh)"
eval "$(starship init zsh)"

export KEYTIMEOUT=200
# KEYBINDINGS {{{
# bindkeys after sourcing omz !
bindkey '^o' autosuggest-execute
bindkey '^b' backward-word
bindkey '^q' backward-delete-word
bindkey '^[[3~' delete-char
bindkey '^w' forward-word
bindkey -M vicmd '^[[3~' forward-char
# }}}

# SYNTAX HIGHLIGHTING CONFIGURATION {{{
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
# }}}
#
# `znap source` automatically downloads and starts your plugins.

# znap source marlonrichert/zsh-autocomplete
znap source zsh-users/zsh-autosuggestions
znap source zsh-users/zsh-syntax-highlighting


# NOTE: trying out starship
# source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
# NOTE: trying out starship
# [[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
btw
