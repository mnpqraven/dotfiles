export ZSH="/home/othi/.oh-my-zsh"
#alac huge font fix
export WINIT_HIDPI_FACTOR=1

export TERM="xterm-256color"
export UPDATE_ZSH_DAYS=7
export PATH="$PATH:$HOME/.vim/bundle/vim-superman/bin"
# probably comment this in pc
export PATH="$PATH:$HOME/.local/bin"
# export this in .profile if ranger opens up nano when opening ranger with
# keybinds
#export EDITOR=nvim

export KEYTIMEOUT=1
bindkey -v
plugins=(
git
vi-mode
tmux
archlinux
colored-man-pages
common-aliases
#zsh-autosuggestions
)
# removes emulate -L zsh if can't completet dirs
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

# ALIASES
# dir aliases {{{
# TODO symbolic links
alias golinux="cd /run/media/othi/linux-data"
alias gowin="cd /run/media/othi/WIN-DATA"
alias swt="cd /run/media/othi/linux-data/studium/swt/swt2018_altradgieseltung/"
alias swtD="cd $HOME/Documents/swt2018_altradgieseltung/"
alias qm="cd ~/qmk_firmware"
# }}}

# commands aliases {{{
alias mz="ncmpcpp"
alias screen="maim -s | xclip -selection clipboard -t image/png"
alias cl="clear"
alias tat="tmux attach"
alias key="source /home/othi/Scripts/ssh-agent.sh"
alias r="ranger"
alias cfg="ranger --selectfile= .config/"
alias tm="tmux"
alias v="$EDITOR"
# }}}

# config aliases
alias vrc="$EDITOR $HOME/.vimrc"
alias zrc="$EDITOR $HOME/.zshrc"
alias zenv="$EDITOR $HOME/.zshenv"
alias rrc="$EDITOR $HOME/.config/ranger/rc.conf"
alias tmrc="$EDITOR $HOME/.tmux.conf"

# git aliases {{{
alias gt="git tree"
alias gac="git allcommit '"
alias grst="git reset"
alias gRST="git reset --hard && git clean -fd"
alias gmnc="git merge --no-commit"
# }}}
#alias nv="nvim"

source $ZSH/oh-my-zsh.sh
