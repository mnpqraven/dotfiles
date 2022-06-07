# Muh i3 rice

# 2022 update
- boot up with the arch iso
`archinstall`
- lets try desktop, there's already i3gaps
- remember to config network
- `git curl xclip` to install
- config files saved in `/usr/share`

run the install script
```
curl -o new_install.sh https://raw.githubusercontent.com/mnpqraven/dotfiles/development/new_install.sh && bash new_install.sh
```
TODO:
- complete mpd install script
- migrate font install script

post install:
- copy contents from .config .vim .zsh .tmux.conf .profile
- open up vim and `:PlugInstall :PluginInstall`
- open up tmux and `<Prefix> + I`
- run mpd setup shell(incompleted for now)
