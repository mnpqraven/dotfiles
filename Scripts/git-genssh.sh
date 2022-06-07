#!/bin/bash
echo "do NOT sudo this, if you did it by accident, cancel"
echo "enter your email:"
read email
ssh-keygen -t ed25519 -C "$email"
eval "$(ssh-agent -s)"
ssh-add $HOME/.ssh/id_ed25519
xclip $HOME/.ssh/id_ed25519.pub
echo -e "ssh key was copied into the clipboard\nlog into your GitHub account and paste it in the setting, you can also copy with xclip later"
