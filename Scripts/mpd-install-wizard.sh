#!/bin/bash
# mpd setup
ln -s /mnt/nas/db1/Music ~/Music/localdb
ln -s /mnt/nas-remote/db1/Music ~/Music/remotedb
mkdir ~/.comfig/mpd
touch ~/.config/mpd/database
mkdir ~/.config/mpd/playlists
# double check device list with `aplay --list-pcm`
#sudo systemctl enable mpd
#sudo systemctl start mpd
