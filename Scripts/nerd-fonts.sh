#!/bin/bash
while true; do
<<<<<<< Updated upstream
    read -p "Do you want to install nerd fonts ?(y/n) " yn1
    read -p "Do you want to install papirus-icon-theme ?(y/n) " yn2
    case $yn1 in
=======
    read -p "Do you want to install nerd fonts ?(y/n)" yn
    case $yn in
>>>>>>> Stashed changes
        [yY] ) yay nerd-fonts-complete;
            exit;;
        [nN] ) echo "you can run this code again by running bash ~/dotfiles/Scripts/nerd-fonts.sh";
            exit;;
        * ) echo "invalid response";;
    esac
    case $yn2 in
        [yY] ) yay papirus-icon-theme-git;
            exit;;
        [nN] ) echo "you can run this code again by running bash ~/dotfiles/Scripts/nerd-fonts.sh";
            exit;;
        * ) echo "invalid response";;
    esac
done

echo "you can run this code again by running bash ~/dotfiles/Scripts/nerd-fonts.sh"
