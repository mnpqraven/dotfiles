#!/bin/bash
while true; do

    read -p "Do you want to install qmk firmware ?(y/n)" yn
    case $yn in
        [yY] ) sudo pacman -S --noconfirm qmk;
            cd "$HOME";
            qmk setup mnpqraven/qmk_firmware -H $HOME/qmk_firmware;
            exit;;
        [nN] ) echo "you can run this code again by running bash ~/dotfiles/Scripts/qmk-setup.sh";
            exit;;
        * ) echo "invalid response";;
    esac
done

