# GRABBING FILES
git clone https://github.com/mnpqraven/dotfiles.git
# INSTALLING YAY
sudo pacman -Syu
sudo chown -R `whoami`:users ./yay
cd yay
makepkg -si --noconfirm
cd $HOME

# INSTALLING STUFF
# EDITOR
sudo pacman -S --noconfirm neovim zsh-theme-powerlevel10k awesome-terminal-fonts ttf-font-awesome powerline-fonts
# not using this powerline from git rn but using pacman's version
#pip install --user powerline
#pip install --user git+git://github.com/powerline/powerline
# MARKDOWN AND LATEX
sudo pip3 install neovim-remote
#sudo pacman -S --noconfirm r pandoc pandoc-citeproc texlive-most
#yay rstudio-desktop-bin

sudo pacman -S --noconfirm atom
# vundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
#vim plug
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

# TERMITAL
sudo pacman -S --noconfirm maim tmux alacritty

# DESKTOP ENV
sudo pacman -S --noconfirm compton rofi ranger neofetch copyq w3m powerline dolphin

# TOOLS
sudo pacman -S --noconfirm feh deluge fzf python-pip r
# MEDIA
sudo pacman -S --noconfirm mpd mpv mpc ncmpcpp vlc
# mpd setup
# double check device list with `aplay --list-pcm`
#mkdir ~/Playlists
#sudo systemctl enable mpd
#sudo systemctl start mpd

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

# COMMENTED OUT FOR NOW
## arandr
# TODO
#yay nerd-fonts-complete
#yay emoji-font
#yay kasumi
#yay google-chrome
#yay discord
# qmk stuff
# music stuff
