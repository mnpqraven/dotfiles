#!/usr/bin/bash
echo "Credentials gen script for smb mounts, you can sudo this"
echo "Enter smb login username"
while true;
do
    read username
    read -p "is $username the correct user ?(y/n)" yn
    case $yn in
        [yY] ) break;;
        [nN] ) echo "reenter smb login username";;
        * ) echo "invalid response"
    esac
done

while true;
do
    echo "Enter smb login password"
    read -s password
    echo "retype the password"
    read -s password2
    if [ $password = $password2 ];
    then break;
    else echo "password doesn't match'"
    fi
done


echo -e "Enter smb workgroup\n(default=WORKGROUP)"
read workgroup
echo -e "username=$username\npassword=$password\ndomain=${workgroup:-WORKGROUP}" > /etc/.credentials
sudo chmod 600 /etc/.credentials
echo "file created at /etc/.credentials"
echo "Copying mountpoint to systemd directory..."
sudo cp mountpoint/* /etc/systemd/system
echo "NAS mounts are not automounted by default, you can set automount with systemctl enable mountpoint.automount"
