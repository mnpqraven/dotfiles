# My dotfiles

## Installation (2023 update)
- boot up with the arch iso then run `archinstall`
- choose `i3gaps`
- config network with `NetworkManager`
- install `git curl firefox xclip alacritty`

run the install script
```
curl -o install.sh https://raw.githubusercontent.com/mnpqraven/dotfiles/development/install.sh && sh install.sh
```

## Post-installation:

Mozc:
- Import mozc keymap and romantable in dotfiles/.config/mozc
- Enable IME inline preedit by opening `fcitx5-configtool` -> Addons -> `X
  Input Method Frontend` -> Enable 'Use On The Spot Style'

LightDM:
- Change config to run randr script by
```
sudoedit /etc/lightdm/lightdm.conf
```
and edit the line starting with `display-setup-script` to
`display-setup-script=/usr/bin/setup_monitors`

EasyEffects:
- import the EQs from `.config/easyeffects/EQs` (choose APO import)
