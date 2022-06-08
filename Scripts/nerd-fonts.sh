#!/bin/bash
while true; do

    read -p "Do you want to install nerd fonts ?(y/n)" yn
    case $yn in
        [yY] ) yay nerd-fonts-complete;
            exit;;
        [nN] ) echo "you can run this code again by running bash ~/dotfiles/Scripts/nerd-fonts.sh";
            exit;;
        * ) echo "invalid response";;
    esac

done

echo "you can run this code again by running bash ~/dotfiles/Scripts/nerd-fonts.sh"
