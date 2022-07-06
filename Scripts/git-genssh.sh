#!/bin/bash
echo "do NOT sudo this, if you did it by accident, cancel"
echo "enter your email:"
while true;
do
read email
read -p "is $email the correct email ?(y/n)" yn
case $yn in
    [yY] ) break;;
    [nN] ) echo "reenter your email";;
    * ) echo "invalid response";;
esac

done

ssh-keygen -t ed25519 -C "$email"
eval "$(ssh-agent -s)"
ssh-add $HOME/.ssh/id_ed25519
xclip $HOME/.ssh/id_ed25519.pub
echo -e "ssh key was copied into the clipboard\nlog into your GitHub account and paste it in the setting, you can also copy with xclip later"
echo -e "if there's issus regarding ssh authentication try running ssh-add .ssh/id_ed25519 after a reboot"
