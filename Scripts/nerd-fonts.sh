#!/bin/bash
while true; do
    read -p "Do you want to install nerd fonts ?(y/n) " yn1
    read -p "Do you want to install papirus-icon-theme ?(y/n) " yn2
    read -p "Do you want to install mplus(JP font) ?(y/n) " yn3
    case $yn1 in
        [yY] ) yay nerd-fonts-git;
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
    case $yn3 in
        [yY] ) yay nerd-fonts-mplus;
            exit;;
        [nN] ) echo "you can run this code again by running bash ~/dotfiles/Scripts/nerd-fonts.sh";
            exit;;
        * ) echo "invalid response";;
    esac
done

echo "you can run this code again by running bash ~/dotfiles/Scripts/nerd-fonts.sh"
