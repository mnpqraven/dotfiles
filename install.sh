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
#
# LANGS
sudo pacman -S --noconfirm cmake make gcc clang rustup mold
rustup default nightly
# deps + env for tauri
sudo pacman -S --needed \
    webkit2gtk \
    base-devel \
    curl \
    wget \
    openssl \
    appmenu-gtk-module \
    gtk3 \
    libappindicator-gtk3 \
    librsvg \
    libvips

# EDITOR
sudo pacman -S --noconfirm neovim jq
sudo pacman -S --noconfirm alsa-utils easyeffects arandr inetutils

# EQ for easyeffects
curl -L https://udomain.dl.sourceforge.net/project/lsp-plugins/lsp-plugins/1.2.4/Linux-x86_64/lsp-plugins-lv2-1.2.4-Linux-x86_64.tar.gz > lsp-lv2.tar.gz
tar vfx lsp-lv2.tar.gz
sudo cp $HOME/lsp-plugins-lv2-1.2.4-Linux-x86_64/usr/lib/* /usr/local/lib -r
rm -rf lsp-lv2.tar.gz lsp-plugins-lv2-1.2.4-Linux-x86_64


cd $HOME/dotfiles/Scripts
bash nas-setup.sh
cd $HOME/dotfiles
bash Scripts/mpd-install-wizard.sh
cd $HOME

# notification
sudo pacman -S libnotify
yay leftwm leftwm-theme-git
sudo pacman -S polybar
mkdir -p $HOME/.local/share/fonts
cp -rf .fonts/* $HOME/.local/share/fonts

leftwm-theme update
# ln -s ~/.config/leftwm/themes/othi ~/.config/leftwm/themes/current
yay wired
yay xmessage
yay discord-canary-electron-bin
yay ttf-symbola
sudo pacman -S --noconfirm noto-fonts-cjk noto-fonts-emoji noto-fonts-extra

# MUSIC
sudo pacman -S --noconfirm mpd mpv mpc ncmpcpp vlc pamixer
sudo pacman -S openssl
sudo systemctl enable --now mpd
sudo systemctl enable --now sshd

sudo pacman -S yadm
yadm clone https://github.com/mnpqraven/dotfiles

sudo pacman -S --noconfirm zathura zathura-pdf-mupdf zathura-cb
sudo pacman -S --noconfirm texlive-most texlive-langextra python-pip

# MARKDOWN AND LATEX
sudo pip3 install neovim-remote
sudo pacman -S --noconfirm maim tmux man-db atool btop
sudo pacman -S --noconfirm picom rofi feh pastel bat
sudo pacman -S awesome-terminal-fonts ttf-font-awesome
# fonts and wm
yay papirus-icon-theme-git
git clone https://github.com/ryanoasis/nerd-fonts.git --depth 1
bash nerd-fonts/install.sh
# checksum error for now
# yay nerd-fonts-complete
sudo pacman -S --noconfirm wmctrl

# FM
yay clifm

cargo install --locked zellij xplr starship bacon
cargo install exa kalker macchina cargo-update tauri-cli
echo $(zellij setup --generate-completion zsh) > $ZSH/completions/zellij_completion

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

npm i -g vercel

sudo cp .screenlayout/setup_monitors /usr/bin
sudo rm /usr/share/fontconfig/conf.avail/10-sub-pixel-rgb.conf

cd $HOME/.config/leftwm/themes/Blood-Moon
git clone git@github.com:mnpqraven/Blood-Moon-leftwm-theme.git .
cd $HOME

# NOTE: dev corner
sh Scripts/helix-setup.sh

cd $HOME
mkdir -p Repos

yadm reset --hard
yadm pull
rm .*.pre-oh-my-zsh -f
yadm submodule update --recursive --init
rm -rf nerd-fonts
rm -rf dotfiles
# testing
# disable auto idle
xset -dpms

# install docker
sudo pacman -S --noconfirm docker
sudo usermod -aG docker $USER
sudo systemctl enable --now docker

