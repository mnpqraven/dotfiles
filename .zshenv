export ZSH="$HOME/.oh-my-zsh"
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
# removes emulate -L zsh if can't complete dirs
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

# ALIASES
# dir aliases {{{
# add an a at the end to go to the dir directly
alias linux="ranger --selectfile=$HOME/Documents/linux-data/a"
alias win="ranger --selectfile=$HOME/Documents/WIN-DATA/a"
alias raven="ranger --selectfile=$HOME/Documents/Raven/a"
alias swt="ranger --selectfile=$HOME/Documents/studium/swt/swt2018_altradgieseltung/a"
alias qmk="ranger --selectfile=$HOME/qmk_firmware/a"
alias gh="ranger --selectfile=$HOME/a"
alias cfg="ranger --cmd='set show_hidden true' --selectfile=$HOME/.config/a"
# }}}

# commands aliases {{{
alias v="$EDITOR"
alias mz="ncmpcpp"
alias screen="maim -s | xclip -selection clipboard -t image/png"
alias cl="clear"
alias tat="tmux attach"
alias key="source $HOME/Scripts/ssh-agent.sh"
alias r="ranger"
alias tm="tmux"
# }}}

# config aliases
alias vrc="$EDITOR $HOME/.vimrc"
alias zrc="$EDITOR $HOME/.zshrc"
alias zenv="$EDITOR $HOME/.zshenv"
alias rrc="$EDITOR $HOME/.config/ranger/rc.conf"
alias tmrc="$EDITOR $HOME/.tmux.conf"

# git aliases {{{
alias gt="git tree"
alias gac="git allcommit"
alias grst="git reset"
alias gRST="git reset --hard && git clean -fd"
alias gmnc="git merge --no-commit"
alias gcom="git checkout master"
alias qmkf="git checkout master && git fetch upstream && git pull upstream master && git push origin master"
# }}}

source $ZSH/oh-my-zsh.sh
