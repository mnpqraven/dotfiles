# GRABBING FILES
git clone -b development https://github.com/mnpqraven/dotfiles.git
# INSTALLING YAY
sudo pacman -Syu
cd /opt
sudo git clone https://aur.archlinux.org/yay.git
sudo chown -R `whoami`:users ./yay
cd yay
makepkg -si --noconfirm
cd $HOME

# INSTALLING STUFF
# EDITOR
sudo pacman -S --noconfirm neovim zsh-theme-powerlevel10k awesome-terminal-fonts ttf-font-awesome powerline-fonts
sudo pacman -S --noconfirm texlive-most texlive-langextra python-pip evince
# MARKDOWN AND LATEX
sudo pip3 install neovim-remote
git config --global core.editor $EDITOR
#sudo pacman -S --noconfirm r pandoc pandoc-citeproc texlive-most
#yay rstudio-desktop-bin
pip install --user powerline-status

sudo pacman -S --noconfirm atom
#vim plug
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

# TERMITAL
sudo pacman -S --noconfirm maim tmux alacritty man-db atool
#git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

# DESKTOP ENV
sudo pacman -S --noconfirm compton rofi ranger neofetch copyq w3m feh dolphin
yay clifm

# TOOLS
sudo pacman -S --noconfirm cmake make gcc clang
sudo pacman -S nodejs-lts-gallium npm
yay nvm
# npm might break
sudo npm install -g n
sudo n latest
sudo pacman -S --noconfirm deluge fzf ripgrep fd python-pip r neomutt
sudo pacman -S --noconfirm fcitx5 fcitx5-unikey fcitx5-mozc fcitx5-configtool fcitx5-gtk
# npm might break
sudo npm install -g neovim
sudo pacman -S --noconfirm firefox
yay google-chrome

# MEDIA
sudo pacman -S --noconfirm mpd mpv mpc ncmpcpp vlc

echo "-------------------------------"
echo "ZSH"
chsh -s $(which zsh)
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
cd .oh-my-zsh/custom/plugins
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git
cd ~/

# bumblebee-status setup
sudo pip install netifaces psutil requests power i3ipc docker
git clone https://github.com/tobi-wan-kenobi/bumblebee-status.git
cp $HOME/dotfiles/Scripts/othi-burgundy.json ~/bumblebee-status/themes

echo "-------------------------------"
echo "NAS"
echo "ADDING NAS DRIVE TO MOUNT TABLE"
cd $HOME/dotfiles/Scripts
sudo bash ./nas-setup.sh
#dotfiles/
cd ..

echo "-------------------------------"
echo "GIT"
echo "Installing GitHub SSH key, open up GitHub in your browser and get ready to add the key"
bash Scripts/git-genssh.sh
sudo systemctl enable sshd.service

echo "-------------------------------"
echo ".CONFIG"
bash Scripts/move-config.sh
read -p "press enter after you have pasted the key in your github browser" confirm

echo "-------------------------------"
echo "MPD"
bash Scripts/mpd-install-wizard.sh

echo "-------------------------------"
echo "VIM"
bash Scripts/nerd-fonts.sh

echo "-------------------------------"
echo "QMK"
bash Scripts/qmk-setup.sh

echo "Install completed, you can reboot now"
echo "remember to import keymaps from mozc after reboot"
