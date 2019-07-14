export ZSH="$HOME/.oh-my-zsh"
#alac huge font fix
export WINIT_HIDPI_FACTOR=1
export NVIM_TUI_ENABLE_CURSOR_SHAPE=1

# using screen-256color here would produce a weird double output of command after <CR> in zsh like:
# $ tmux
# tmuxtmux no session
export TERM="xterm-256color"
export UPDATE_ZSH_DAYS=7
export PATH="$PATH:$HOME/.vim/bundle/vim-superman/bin"
# probably comment this in pc
export PATH="$PATH:$HOME/.local/bin"
export KEYTIMEOUT=1

# To allow any key to get things flowing again, use
stty -ixon
# stty ixany

# SSH
if ! pgrep -u "$USER" ssh-agent > /dev/null; then
    ssh-agent > ~/.ssh-agent
fi
if [[ "$SSH_AGENT_PID" == "" ]]; then
    eval "$(<.ssh-agent)" > /dev/null
fi

# gf alarm
for i in `atq | awk '{print $1}'`;do atrm $i;done
at 2000 <<< 'notify-send -i "battery" "get batts" "more batts" -u critical'&>/dev/null

#if [[ -z "$(pgrep mpd)" ]]; then
#	mpd
#	mpc pause
#fi

bindkey -v
plugins=(
git
vi-mode
tmux
archlinux
colored-man-pages
)
# removes emulate -L zsh if can't completet dirs
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

# ALIASES in .zshenv

source $ZSH/oh-my-zsh.sh

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
ZSH_HIGHLIGHT_STYLES[precommand]='fg=cyan,underline'
ZSH_HIGHLIGHT_STYLES[path]='fg=225,underline'
ZSH_HIGHLIGHT_STYLES[single-quoted-argument]='fg=225'
ZSH_HIGHLIGHT_STYLES[double-quoted-argument]='fg=225'
# }}}

# POWERLEVEL9K CONFIGURATION {{{

POWERLEVEL9K_CONTEXT_TEMPLATE="%n@%M"
POWERLEVEL9K_MODE='nerdfont-complete'

DEFAULT_FOREGROUND=006 DEFAULT_BACKGROUND=235
DEFAULT_COLOR=$DEFAULT_FOREGROUND
POWERLEVEL9K_SHORTEN_DIR_LENGTH=2

POWERLEVEL9K_PROMPT_ON_NEWLINE=true
POWERLEVEL9K_RPROMPT_ON_NEWLINE=true

POWERLEVEL9K_PROMPT_ADD_NEWLINE=true

POWERLEVEL9K_CONTEXT_DEFAULT_BACKGROUND='darkred'
POWERLEVEL9K_CONTEXT_DEFAULT_FOREGROUND='015'
POWERLEVEL9K_STATUS_OK_BACKGROUND='dodgerblue1'
POWERLEVEL9K_STATUS_ERROR_FOREGROUND='015'
POWERLEVEL9K_OK_ICON='\Uf42e'
POWERLEVEL9K_CARRIAGE_RETURN_ICON=''

# DIR
POWERLEVEL9K_DIR_HOME_BACKGROUND='009'
POWERLEVEL9K_DIR_HOME_FOREGROUND='015'
POWERLEVEL9K_DIR_HOME_SUBFOLDER_BACKGROUND='088'
POWERLEVEL9K_DIR_HOME_SUBFOLDER_FOREGROUND='white'
POWERLEVEL9K_DIR_DEFAULT_BACKGROUND='088'
POWERLEVEL9K_DIR_DEFAULT_FOREGROUND='white'
POWERLEVEL9K_DIR_ETC_BACKGROUND='088'
POWERLEVEL9K_DIR_ETC_FOREGROUND='white'


POWERLEVEL9K_VCS_HIDE_TAGS=false
POWERLEVEL9K_SHOW_CHANGESET=true
POWERLEVEL9K_CHANGESET_HASH_LENGTH=7
POWERLEVEL9K_VCS_CLEAN_FOREGROUND='black'
POWERLEVEL9K_VCS_CLEAN_BACKGROUND='springgreen3'
POWERLEVEL9K_VCS_UNTRACKED_FOREGROUND='black'
POWERLEVEL9K_VCS_UNTRACKED_BACKGROUND='011'
POWERLEVEL9K_VCS_MODIFIED_FOREGROUND='black'
POWERLEVEL9K_VCS_MODIFIED_BACKGROUND='011'
POWERLEVEL9K_VCS_GIT_BITBUCKET_ICON=''

POWERLEVEL9K_STATUS_OK_FOREGROUND='black'
POWERLEVEL9K_VCS_INCOMING_CHANGES_ICON=$'\Uf54a '
POWERLEVEL9K_VCS_OUTGOING_CHANGES_ICON=$'\Uf562 '
POWERLEVEL9K_VCS_ACTIONFORMAT_FOREGROUND='red'

POWERLEVEL9K_VI_MODE_NORMAL_BACKGROUND='148'
POWERLEVEL9K_VI_MODE_NORMAL_FOREGROUND='22'
POWERLEVEL9K_VI_MODE_INSERT_BACKGROUND='darkred'
POWERLEVEL9K_VI_MODE_INSERT_FOREGROUND='015'
POWERLEVEL9K_VI_COMMAND_MODE_STRING="%B彼岸花%b"
POWERLEVEL9K_VI_INSERT_MODE_STRING="%B彼岸花%b"

POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(vi_mode dir)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status vcs)

#Icon config
POWERLEVEL9K_HOME_ICON='\Uf7db'
# POWERLEVEL9K_HOME_ICON='\UF015'

POWERLEVEL9K_SUB_ICON='\UF07C'
POWERLEVEL9K_FOLDER_ICON='\UF07B'
POWERLEVEL9K_VCS_GIT_GITHUB_ICON=''
POWERLEVEL9K_VCS_BRANCH_ICON=$'\uF126 '
POWERLEVEL9K_VCS_STAGED_ICON='\u00b1'
POWERLEVEL9K_LEFT_SEGMENT_SEPARATOR='\Ue0bc'
POWERLEVEL9K_LEFT_SUBSEGMENT_SEPARATOR='\Ue0bb'
POWERLEVEL9K_RIGHT_SEGMENT_SEPARATOR='\uE0B2'
POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX="%F{052}\u256D%F{white}"
#P9K_MULTILINE_SECOND_PROMPT_PREFIX="❱ "
POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX="%F{088}\u2570%F{124}\uF460%F{160}\uf460%F{196}\uF460%F{015} "
# }}}

source /usr/share/zsh-theme-powerlevel9k/powerlevel9k.zsh-theme
source $ZSH_CUSTOM/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.plugin.zsh
