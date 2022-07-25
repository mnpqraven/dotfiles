#!/bin/bash
echo "do NOT sudo this, if you did it by accident, cancel"
echo "enter your email:"
while true;
do
read email
read -p "is $email the correct email ?(y/n) " yn
case $yn in
    [yY] ) break;;
    [nN] ) echo "reenter your email";;
    * ) echo "invalid response";;
esac
done

echo "enter your name:"
while true;
do
read name
read -p "is $name the correct name ?(y/n) " yn
case $yn in
    [yY] ) break;;
    [nN] ) echo "reenter your name";;
    * ) echo "invalid response";;
esac

ssh-keygen -t ed25519 -C "$email"
git config --global user.email $email
git config --global user.name $name
eval "$(ssh-agent -s)"
ssh-add $HOME/.ssh/id_ed25519
xclip $HOME/.ssh/id_ed25519.pub
touch $HOME/.ssh/config
echo AddKeysToAgent yes >> $HOME/.ssh/config
