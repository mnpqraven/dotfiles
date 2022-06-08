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
sudo pacman -S --noconfirm texlive-most python-pip
# MARKDOWN AND LATEX
sudo pip3 install neovim-remote
git config --global core.editor $EDITOR
#sudo pacman -S --noconfirm r pandoc pandoc-citeproc texlive-most
#yay rstudio-desktop-bin
pip install --user powerline-status

sudo pacman -S --noconfirm atom
# vundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
#vim plug
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

# TERMITAL
sudo pacman -S --noconfirm maim tmux alacritty
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

# DESKTOP ENV
sudo pacman -S --noconfirm compton rofi ranger neofetch copyq w3m dolphin

# TOOLS
sudo pacman -S --noconfirm feh deluge fzf python-pip r fcitx5 fcitx5-configtool-qt fcitx5-gtk neomutt
yay google-chrome
# MEDIA
sudo pacman -S --noconfirm mpd mpv mpc ncmpcpp vlc

# ZSH setup
chsh -s $(which zsh)
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
cd .oh-my-zsh/custom/plugins
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git
cd ~/
# bumblebee-status setup
sudo pip install netifaces psutil requests power i3ipc docker
git clone https://github.com/tobi-wan-kenobi/bumblebee-status.git
cp $HOME/dotfiles/Scripts/othi-burgundy.json ~/bumblebee-status/themes

# COMMENTED OUT FOR NOW
## arandr
#need this
# TODO
# qmk stuff
# music stuff
# latex works but missing pdf viewer
# csv folder structure

# copy config from dotfiles to system (note: overwrite) testing rn

echo "ADDING NAS DRIVE TO MOUNT TABLE"
cd $HOME/dotfiles/Scripts
sudo bash ./nas-setup.sh
echo "Installing GitHub SSH key, open up GitHub in your browser and get ready to add the key"
bash ./git-genssh.sh
echo "Install completed, you can reboot now"
#dotfiles/
cd ..
bash Scripts/move-config.sh
git fetch
read -p "press enter after you have pasted the key in your github browser" confirm
git fetch
nvim -c PlugInstall
nvim -c PluginInstall
bash Scripts/nerd-fonts.sh
echo "also check post-installation section on github"
