# in case user forget
sudo pacman -Syu
sudo pacman -S firefox alacritty git xclip
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
sudo pacman -S --noconfirm neovim jq
sudo pacman -S --noconfirm alsa-utils easyeffects
# install linux studio plugins
# extract the tarball with `tar vfx`
# sudo cp tarball content to /usr/local/lib
yay nvim-packer-git
# xrandr install script
cd $HOME/dotfiles
bash Scripts/mpd-install-wizard.sh
cd $HOME
sudo systemctl enable --now mpd

# notification
sudo pacman -S libnotify
yay leftwm leftwm-theme-git
sudo pacman -S polybar
mkdir -p $HOME/.local/share/fonts
cp -rf .fonts/* $HOME/.local/share/fonts

leftwm-theme update
ln -s ~/.config/leftwm/themes/othi ~/.config/leftwm/themes/current
yay wired
yay xmessage
yay discord-canary-electron-bin
yay ttf-symbola
sudo pacman -S noto-fonts-cjk noto-fonts-emoji noto-fonts-extra

# MUSIC
sudo pacman -S --noconfirm mpd mpv mpc ncmpcpp vlc pamixer
sudo pacman -S openssl

sudo pacman -S yadm
yadm clone https://github.com/mnpqraven/dotfiles
yadm reset --HARD

sudo pacman -S --noconfirm zathura zathura-pdf-mupdf zathura-cb
sudo pacman -S --noconfirm texlive-most texlive-langextra python-pip

# MARKDOWN AND LATEX
sudo pip3 install neovim-remote
sudo pacman -S --noconfirm maim tmux man-db atool btop
sudo pacman -S --noconfirm picom rofi feh pastel bat
sudo pacman -S awesome-terminal-fonts ttf-font-awesome
# fonts and wm
yay papirus-icon-theme-git
yay nerd-fonts-complete
sudo pacman -S --noconfirm wmctrl

# FM
yay clifm

# LANGS
sudo pacman -S --noconfirm cmake make gcc clang rustup mold
rustup default nightly
cargo install --locked zellij xplr starship
cargo install exa kalker macchina

yay --sync eww-git

sudo pacman -S --noconfirm --overwrite "*" deluge
sudo pacman -S --noconfirm fzf ripgrep zoxide fd
sudo pacman -S --noconfirm fcitx5 fcitx5-unikey fcitx5-mozc fcitx5-configtool fcitx5-gtk
sudo pacman -S qt5-tools
# not yet installed
# sudo npm install -g neovim
sudo pacman -S --noconfirm npm
mkdir -p $HOME/.nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.2/install.sh | bash
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
nvm install node
# wasm-pack, node
sudo pacman -S --noconfirm zsh
sudo pacman -S --noconfirm unzip
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
mkdir -p $HOME/.oh-my-zsh/completions
touch $HOME/.oh-my-zsh/completions/_zellij
echo zellij setup --generate-completion zsh >> $HOME/.oh-my-zsh/completions/_zellij
# config a bar
# nas
#
# POST-INSTALL
# cp .screenlayout/setup_monitors /usr/bin
# sudo nvim /etc/lightdm/lightdm.conf
# display-setup-script=/usr/bin/setup_monitors
# disable sub-pixel rendering
sudo rm /usr/share/fontconfig/conf.avail/10-sub-pixel-rgb.conf
