export UPDATE_ZSH_DAYS=7
export PATH="$PATH:$HOME/.vim/bundle/vim-superman/bin"
# probably comment this in pc
export PATH="$PATH:$HOME/.local/bin"
export PATH="$PATH:$HOME/.cargo/bin"
export ANDROID_SDK_ROOT=$HOME/Android/Sdk
export PATH="$PATH:$ANDROID_SDK_ROOT/emulator"
export PATH="$PATH:$ANDROID_SDK_ROOT/platform-tools"
export XPLR_BOOKMARK_FILE="$HOME/.config/xplr/bookmarks"
export YADM_REPO="$HOME/.local/share/yadm/repo.git"
export GPG_TTY=$(tty)

export KEYTIMEOUT=200
bindkey -v

# ALIASES
# dir aliases {{{
# add an a at the end to go to the dir directly
alias gh="cd $HOME"
alias cfg="$FM $HOME/.config/"
alias cz="cd ~ && cd \$(find * -type d | fzf)"
alias cr="cargo run --"

# }}}

# # commands aliases {{{
alias v="$EDITOR"
alias fm="clifm"
alias fmr="xplr"
alias mz="ncmpcpp"
alias screen="maim -s | xclip -selection clipboard -t image/png"
alias cl="clear"
alias tat="tmux attach"
alias key="source $HOME/Scripts/ssh-agent.sh"
alias r="ranger"
alias tm="tmux"
alias zm="zellij -s main"
alias xpic="xclip -sel clipboard -t image/png"
alias ee="i3-msg exec 'easyeffects --gapplication-service'"
alias y="yadm"

alias rwork="rsync -avzx -e 'ssh -p 6661' $HOME/work othi@183.81.43.11:/volume1/NetBackup/$(whoami)"
alias btw="macchina --theme mezora --show Host Kernel Distribution Packages DesktopEnvironment Memory ProcessorLoad Shell Terminal WindowManager Battery"
# }}}

# config aliases
alias vrc="$EDITOR $HOME/.config/nvim"
alias zrc="$EDITOR $HOME/.zshrc"
alias zenv="$EDITOR $HOME/.zshenv"
alias tmrc="$EDITOR $HOME/.tmux.conf"
alias ydot="$EDITOR $YADM_REPO"

# git aliases {{{
alias gt="git tree"
alias gac="git allcommit"
alias grst="git reset"
alias gRST="git reset --hard && git clean -fd"
alias gmnc="git merge --no-commit"
alias gcom="git checkout master"
alias qmkf="git checkout master && git fetch upstream && git pull upstream master && git push origin master"
# }}}
