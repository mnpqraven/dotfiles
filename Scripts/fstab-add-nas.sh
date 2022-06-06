#!/usr/bin/bash
# append the nas ip to fstab
echo "#//192.168.1.10/db1	/mnt/nas/db1	cifs		cache=loose,noauto,x-systemd.automount,credentials=/etc/.credentials,iocharset=uft8 0 0" >> /etc/fstab

