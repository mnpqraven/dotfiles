#!/bin/bash
# mpd setup
mkdir -p "$HOME"/Music
while true;
do
    read -r -p "do you want a symlink of the local nas?(y/n) " yn
    case $yn in
        [yY] ) ln -sfn /media/naslocal/music "$HOME"/Music/localdb;
            break;;
        [nN] ) break;;
        * ) echo "invalid response";;
    esac
done

while true;
do
    read -r -p "do you want a symlink of the remote nas?(y/n) " yn
    case $yn in
        [yY] ) ln -sfn /media/nasremote/music "$HOME"/Music/remotedb;;
        [nN] ) break;;
        * ) echo "invalid response";;
    esac
done

while true;
do
    read -r -p "do you want to create nessesary folders in .config/mpd ?(y/n) " yn
    case $yn in
        [yY] ) mkdir -p "$HOME"/.config/mpd;
            mkdir -p "$HOME"/.config/mpd;
            touch "$HOME"/.config/mpd/database;
            mkdir -p "$HOME"/.config/mpd/playlists;
            break;;
        [nN] ) break;;
        * ) echo "invalid response";;
    esac
done
