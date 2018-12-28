sudo pacman -Su
sudo pacman -Syu
sudo pacman -S --noconfirm ibus ibus-anthy ibus-unikey
sudo pacman -S --noconfirm yay
sudo pacman -S --noconfirm maim
sudo pacman -S --noconfirm neofetch tmux at atom
sudo pacman -S --noconfirm compton rofi
sudo pacman -S --noconfirm genymotion
sudo pacman -S --noconfirm ranger deludge
sudo pacman -S --noconfirm arandr
sudo pacman -S --noconfirm i3-gaps
sudo pacman -S --noconfirm mpd mpv mpc
sudo pacman -S --noconfirm ncmpcpp
sudo pacman -S --noconfirm copyq
sudo pacman -S --noconfirm vim neovim zsh-theme-powerlevel9k

pip install --user powerline-status
pip install --user git+git://github.com/powerline/powerline
sudo pacman -S --noconfirm powerline-fonts


git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

systemctl enable atd.service

mkdir ~/Playlists
sudo systemctl enable mpd
sudo systemctl start mpd
# double check device list with `aplay --list-pcm`

yay nerd-fonts-complete
yay google-chrome
yay discord

chsh -s $(which zsh)
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

sudo pip install netifaces psutil requests power i3ipc docker
git clone git://github.com/tobi-wan-kenobi/bumblebee-status
cp ~/dotfiles/othi-burgundy.json ~/bumblebee-status/themes

git clone git@github.com:mnpqraven/qmk_firmware.git
qmk_firmware/util/linux_install.sh
cd qmk_firmware
git remote add upstream https://github.com/qmk/qmk_firmware.git
git checkout master
git fetch upstream
git pull upstream master
git push origin master
cd ..


ln -s /run/media/othi/linux-data/Music/* Music
