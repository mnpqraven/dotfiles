# Muh i3 rice

TODO: full setup list
- **Terminal**
 	* Terminal: **zsh + tmux** in xfce4-terminal
	* Terminal font: ShureTechMono Nerd Font 14
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
 	* **ranger + fzf**
	* thunar
- **Text editor**
 	* Main text editor: **Vim**
	* Diffs and MD preview: Atom
- **Image Processing**
 	* **feh**
	* **maim** for screenshot
- **Clipboard**
 	* **copyq**
- **IDE**
 	* **Intellij** (help - custom settings `suppress.focus.stealing=false`)
- **Web browser**
 	* Google Chrome, might switch to qtbrowser soon
- **Mail**
 	* Thunderbird, might move to mutt soon
- **Virtual Machines**
 	* **Genymotion**
	* Wine

![muh chinese waifoo](https://github.com/mnpqraven/dotfiles/blob/master/preview2.png?raw=true)
![muh chinese waifoo](https://github.com/mnpqraven/dotfiles/blob/master/preview.png?raw=true)

TO-DOs:
- [ ] config ranger
- [ ] config ncmpcpp **colorscheme on hold, TODO keymap** (other references [here](https://ubuntu-mate.community/t/how-to-install-and-setup-mpd-mpdscribble-ncmpcpp/8439))
- [ ] add utility packages to bumblebee shortcuts
- [ ] install + config Wine
- [ ] conf vim ale for java env

- [ ] separate checker for laptop screen
- [x] ready to port to laptop
- [ ] some small stuff in usr/share, will edit this when i remember

- install ncmpcpp + mpd
- reference: https://ubuntu-mate.community/t/how-to-install-and-setup-mpd-mpdscribble-ncmpcpp/8439
- installation done, conf left

# install order, no script yet cause i'm a literal retard
- mount all drives
- git SSH key
````
sudo pacman -S --noconfirm xclip
git keygen
xclip -sel clip < ~/.ssh/id_rsa.pub
````
- Clone the dofile repo
`git clone git@github.com:mnpqraven/dotfiles.git`

- You can now run the main install script
`dotfiles/quick_install.sh`
- powerline
	- NOTE: install powerline using this
	````
	pip install --user powerline-status
	pip install --user git+git://github.com/powerline/powerline
	````
- arandr, save the layout as layout.sh
- copy images
- systemctl enable atd.service
- mpd service and ncmpcpp
- double check device list with `aplay --list-pcm`
