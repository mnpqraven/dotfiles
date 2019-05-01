sudo pacman -Syyu
sudo pacman -Syu

sudo pacman -S --noconfirm virtualbox
yay genymotion
# /sbin/rcvboxdrv setup
# sudo modprobe vboxdrv
# sudo modprobe vboxnetflt
# sudo modprobe vboxnetadp
# sudo modprobe vboxpci


sudo pacman -S --noconfirm ibus ibus-anthy ibus-unikey
sudo pacman -S --noconfirm yay
sudo pacman -S --noconfirm maim
sudo pacman -S --noconfirm neofetch tmux at atom
sudo pacman -S --noconfirm compton rofi feh
sudo pacman -S --noconfirm ranger deluge
sudo pacman -S --noconfirm arandr
sudo pacman -S --noconfirm i3-gaps
sudo pacman -S --noconfirm mpd mpv mpc ncmpcpp
sudo pacman -S --noconfirm copyq fzf w3m
sudo pacman -S --noconfirm vim neovim zsh-theme-powerlevel9k awesome-terminal-fonts ttf-font-awesome powerline-fonts

sudo pacman -S --noconfirm intellij-idea-community-edition

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
cd ~/
cd qmk_firmware
git remote add upstream https://github.com/qmk/qmk_firmware.git
git checkout master
git fetch upstream
git pull upstream master
git push origin master
cd ..

# betterDiscord, check link for potential new changes
# https://gist.github.com/ObserverOfTime/d7e60eb9aa7fe837545c8cb77cf31172
cd ~/
curl -O https://raw.githubusercontent.com/bb010g/betterdiscordctl/master/betterdiscordctl
chmod +x betterdiscordctl
sudo mv betterdiscordctl /usr/local/bin
betterdiscordctl install
betterdiscordctl update
curl -O https://raw.githubusercontent.com/nirewen/Citador/master/Citador.plugin.js
mv Citador.plugin.js ~/.config/BetterDiscord/plugins
curl -O https://gist.githubusercontent.com/mnpqraven/7b7fa891033efbfb2148e80643f4a8dc/raw/1364a91c6803a86dfedf62531dacb56c53fb84d4/Izanami.theme.css
mv Izanami.theme.css ~/.config/BetterDiscord/themes/

# markdown and latex
sudo pip3 install neovim-remote
sudo pacman -S --noconfirm r pandoc pandoc-citeproc texlive-most
yay rstudio-desktop-bin

# folder fix and setup completion
mkdir ~/.config/mpd/playlists
ln -s /run/media/othi/linux-data/Music/* Music

# install plugins in vim
# add JP and VI codex into ibus
# follow markdown installation with RStudio
