export UPDATE_ZSH_DAYS=7
export PATH="$PATH:$HOME/.vim/bundle/vim-superman/bin"
# probably comment this in pc
export PATH="$PATH:$HOME/.local/bin"
export ANDROID_SDK_ROOT=$HOME/Android/Sdk
export PATH="$PATH:$ANDROID_SDK_ROOT/emulator"
export PATH="$PATH:$ANDROID_SDK_ROOT/platform-tools"
export FM=clifm

export KEYTIMEOUT=200
bindkey -v
plugins=(
git
tmux
archlinux
colored-man-pages
common-aliases
vi-mode
#zsh-autosuggestions
)
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

# ALIASES
# dir aliases {{{
# add an a at the end to go to the dir directly
alias gh="cd $HOME"
alias cfg="$FM $HOME/.config/"
alias cz="cd ~ && cd \$(find * -type d | fzf)"

# }}}

# # commands aliases {{{
alias v="$EDITOR"
alias mz="ncmpcpp"
alias screen="maim -s | xclip -selection clipboard -t image/png"
alias cl="clear"
alias tat="tmux attach"
alias key="source $HOME/Scripts/ssh-agent.sh"
alias r="ranger"
alias tm="tmux"
alias xpic="xclip -sel clipboard -t image/png"
# }}}

# config aliases
alias vrc="$EDITOR $HOME/.vimrc"
alias vinit="ranger $HOME/.config/nvim"
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
