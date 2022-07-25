# My dotfiles

# 2022 update
- boot up with the arch iso then run `archinstall`
- choose `i3gaps`
- config network with `NetworkManager`
- install `git curl firefox xclip`

run the install script
```
curl -o install.sh https://raw.githubusercontent.com/mnpqraven/dotfiles/development/install.sh && bash install.sh
```
Post-installation:
- Import mozc keymap and romantable in dotfiles/.config/mozc
- Add GPG key to github, for now just do it by hand as it doesn't take long at
  all, the tedious part of generating keys with ssh-keygen and setting up
  ssh-agent was already automated

TODO:
- signing
- MPD rice
- test yadm
