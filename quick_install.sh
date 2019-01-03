sudo pacman -Su
sudo pacman -Syu
sudo pacman -S --noconfirm ibus ibus-anthy ibus-unikey
sudo pacman -S --noconfirm yay
sudo pacman -S --noconfirm maim
sudo pacman -S --noconfirm neofetch tmux at atom
sudo pacman -S --noconfirm compton rofi feh
sudo pacman -S --noconfirm ranger deluge
sudo pacman -S --noconfirm arandr
sudo pacman -S --noconfirm i3-gaps
sudo pacman -S --noconfirm mpd mpv mpc ncmpcpp
sudo pacman -S --noconfirm virtualbox
sudo pacman -S --noconfirm copyq fzf w3m
sudo pacman -S --noconfirm vim neovim zsh-theme-powerlevel9k awesome-terminal-fonts ttf-font-awesome powerline-fonts

pip install --user powerline-status
pip install --user git+git://github.com/powerline/powerline


git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

systemctl enable atd.service
apm install atom-package-sync

# mpd setup
mkdir ~/Playlists
sudo systemctl enable mpd
sudo systemctl start mpd
# double check device list with `aplay --list-pcm`

yay nerd-fonts-complete
yay google-chrome
yay discord
yay genymotion
/sbin/rcvboxdrv setup
sudo modprobe vboxdrv
sudo modprobe vboxnetflt
sudo modprobe vboxnetadp
sudo modprobe vboxpci

# ZSH setup
chsh -s $(which zsh)
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
cd .oh-my-zsh/custom/plugins
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git
cd ~/

# bumblebee-status setup
sudo pip install netifaces psutil requests power i3ipc docker
git clone git://github.com/tobi-wan-kenobi/bumblebee-status
cp ~/dotfiles/othi-burgundy.json ~/bumblebee-status/themes

# QMK setup
git clone git@github.com:mnpqraven/qmk_firmware.git
qmk_firmware/util/linux_install.sh
cd qmk_firmware
git remote add upstream https://github.com/qmk/qmk_firmware.git
git checkout master
git fetch upstream
git pull upstream master
git push origin master
cd ..

# folder fix and setup completion
mkdir ~/.config/mpd/playlists
ln -s /run/media/othi/linux-data/Music/* Music
