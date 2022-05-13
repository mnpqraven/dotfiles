export EDITOR=nvim
export QT_QPA_PLATFORMTHEME="qt5ct"
export QT_AUTO_SCREEN_SCALE_FACTOR=0
export GTK2_RC_FILES="$HOME/.gtkrc-2.0"
eval `/usr/bin/gnome-keyring-daemon --start --components=pkcs11,secrets,ssh,gpg`
export SSH_AUTH_SOCK
export GPG_AGENT_INFO
export GEM_HOME="$(ruby -e 'puts Gem.user_dir')"
export PATH="$PATH:$GEM_HOME/bin"
