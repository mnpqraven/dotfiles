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
read -p "press enter after you have pasted the key in your github browser (ED255)" confirm
# ssh-keygen
# xclip $HOME/.ssh/id_rsa.pub
# read -p "press enter after you have pasted the key in your github browser (RSA)" confirm
sudo systemctl enable sshd.service
eval `/usr/bin/gnome-keyring-daemon --start --components=pkcs11,secrets,ssh,gpg`
