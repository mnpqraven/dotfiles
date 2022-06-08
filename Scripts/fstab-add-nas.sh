#!/usr/bin/bash
# append the nas ip to fstab
#BACKUP
#echo "//192.168.1.10/db1	/mnt/nas/db1	cifs		cache=loose,x-systemd.automount,credentials=/etc/.credentials 0 0" >> /etc/fstab
#TEST THIS
#cache=loose,noauto,x-systemd.device-timeout=5,_netdev
echo "//192.168.1.10/db1	/mnt/nas/db1	cifs		cache=loose,noauto,x-systemd.device-timeout=5,_netdev,credentials=/etc/.credentials 0 0" >> /etc/fstab
echo "//othiremote.synology.me/db1	/mnt/nasremote/db1	cifs		cache=loose,noauto,x-systemd.device-timeout=5,_netdev,credentials=/etc/.credentials 0 0" >> /etc/fstab
