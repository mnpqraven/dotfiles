# in case user forget
sudo pacman -Syu
sudo pacman -S firefox alacritty git
# GRABBING FILES
git clone https://github.com/mnpqraven/dotfiles.git
# INSTALLING YAY
cd /opt
sudo git clone https://aur.archlinux.org/yay.git
sudo chown -R `whoami`:users ./yay
cd yay
makepkg -si --noconfirm
cd $HOME

sudo pacman -S --noconfirm gnome-keyring libsecret
echo "-------------------------------"
echo "GIT"
echo "Installing GitHub SSH key, open up GitHub in your browser and get ready to add the key"
bash $HOME/dotfiles/Scripts/git-genssh.sh

# INSTALLING STUFF
# EDITOR
sudo pacman -S --noconfirm neovim
yay nvim-packer-git
# xrandr install script

sudo pacman -S yadm
yadm clone https://github.com/mnpqraven/dotfiles
yadm reset --HARD

sudo pacman -S --noconfirm zathura zathura-pdf-mupdf zathura-cb
sudo pacman -S --noconfirm texlive-most texlive-langextra python-pip

# MARKDOWN AND LATEX
sudo pip3 install neovim-remote
sudo pacman -S --noconfirm maim tmux man-db atool btop
sudo pacman -S --noconfirm picom rofi feh pastel bat
# [yY] ) yay papirus-icon-theme-git;
# [yY] ) yay nerd-fonts-mplus;

# FM
yay clifm

# LANGS
sudo pacman -S --noconfirm cmake make gcc clang rustup
rustup default nightly
cargo install --locked zellij xplr starship

sudo pacman -S --noconfirm --overwrite "*" deluge
sudo pacman -S --noconfirm fzf ripgrep zoxide fd
sudo pacman -S --noconfirm fcitx5 fcitx5-unikey fcitx5-mozc fcitx5-configtool fcitx5-gtk
# not yet installed
# sudo npm install -g neovim
# wasm-pack, node
sudo pacman -S --noconfirm zsh
chsh -s $(which zsh)
# config a bar
# nas
