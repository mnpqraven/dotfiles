#!/usr/bin/bash
echo "Credentials gen script for smb mounts, you can sudo this"
echo "Enter smb login username"
read username
echo "Enter smb login password"
read -s password
echo -e "Enter smb workgroup\n(default=WORKGROUP)"
read workgroup
echo -e "username=$username\npassword=$password\ndomain=${workgroup:-WORKGROUP}" >> /etc/.credentials
chmod 600 /etc/.credentials
echo "file created at /etc/.credentials"
