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
- [x] config ranger
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
- If you use a new screen layout(optional): arandr, save the layout as layout.sh
- copy images to Pictures/
- copy contents from dotfiles/ to home/
- Virtualbox
  - install virtualbox modules
  - run `/sbin/rcvboxdrv setup` to reload module list in case kernel update broke it
  - add storage permission to browser
  - Android machine is Google Nexus 5X API 6.0

# 2022 update
- boot up with the arch iso
`archinstall`
- lets try desktop, there's already i3gaps
- remember to config network
- `git curl xclip` to install
- config files saved in `/usr/share`

run the install script
```
curl -s https://github.com/mnpqraven/dotfiles/blob/master/new_install.sh > new_install.sh && bash new_install.sh
```
