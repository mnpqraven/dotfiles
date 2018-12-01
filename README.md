# Muh i3 rice

TODO: full setup list
 - **Terminal**
 	* Terminal: **zsh + tmux** in xfce4-terminal
	* Terminal font: Anonymice Nerd Font Bold 13
	* Opacity 0.75
 - **WM**
	* i3gaps
	* xfce4 GUI for windows
 - **Audio**
 	* **mpd** as backend
	* **ncmpcpp** as frontent
 - **Video**
 	* **mpv**
 - **Files Management**
 	* **ranger**
	* **thunar**
 - **Text editor**
 	* Main text editor: **Vim**
	* Diffs: Atom
 - **Image Processing**
 	* **feh**
	* **maim** for screenshot
 - **Clipboard**
 	* **copyq**
 - **placeholder**
 - **placeholder**
 - **placeholder**
 - **Virtual Machines**
 	* **Genymotion**
	* Wine

![muh chinese waifoo](https://github.com/mnpqraven/dotfiles/blob/master/preview2.png?raw=true)
![muh chinese waifoo](https://github.com/mnpqraven/dotfiles/blob/master/preview.png?raw=true)

TO-DOs:
- [ ] config ranger
- [ ] config ncmpcpp **colorscheme on hold, TODO keymap** (other references [here](https://ubuntu-mate.community/t/how-to-install-and-setup-mpd-mpdscribble-ncmpcpp/8439))
- [ ] add utility packages to bumblebee shortcuts
- [ ] take a look at fugitive.vim
- [ ] install + config Wine
- [x] config i3gaps keybinds
- [x] calendar in bumblebee **spawn location left**
- [x] find a vim fuzzy finder
- [x] unify commands in i3, spawns size conf
- [x] config maim and other utility packages

- [ ] separate checker for laptop screen
- [x] ready to port to laptop
 usr/share

- install ncmpcpp + mpd
- reference: https://ubuntu-mate.community/t/how-to-install-and-setup-mpd-mpdscribble-ncmpcpp/8439
- installation done, conf left

# install order, no script yet cause i'm a literal retard
- compton, feh
- vim
- powerline
- arandr, save the layout as layout.sh
- zsh
- i3 + i3 gaps
- bumblebee-status
- xinput for touchpad
- ranger
- systemctl enable atd.service
- mpd service and ncmpcpp
- double check device list with `aplay --list-pcm`
