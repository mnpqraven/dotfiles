export ZSH="$HOME/.oh-my-zsh"
plugins=(git common-aliases zsh-syntax-highlighting vi-mode)
source $ZSH/oh-my-zsh.sh
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

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

source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme
# source $ZSH_CUSTOM/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.plugin.zsh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
