sudo pacman -Su
sudo pacman -Syu
sudo pacman -S --noconfirm ibus ibus-anthy ibus-unikey
sudo pacman -S --noconfirm yay
sudo pacman -S --noconfirm maim
sudo pacman -S --noconfirm neofetch
sudo pacman -S --noconfirm compton
sudo pacman -S --noconfirm genymotion
sudo pacman -S --noconfirm ranger
sudo pacman -S --noconfirm arandr
sudo pacman -S --noconfirm i3-gaps
sudo pacman -S --noconfirm mpd mpv
sudo pacman -S --noconfirm ncmpcpp
sudo pacman -S --noconfirm copyq
sudo pacman -S --noconfirm vim neovim zsh-theme-powerlevel9k

pip install --user powerline-status
pip install --user git+git://github.com/powerline/powerline
sudo pacman -S --noconfirm powerline-fonts

yay nerd-fonts-complete

chsh -s $(which zsh)
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

git clone git://github.com/tobi-wan-kenobi/bumblebee-status
cp ~/dotfiles/othi-burgundy.json ~/bumblebee-status/
