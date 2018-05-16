#!/bin/bash

echo "apt-get install sudo"
sleep 2
apt-get install sudo

echo "adduser myuser sudo"
sleep 2
adduser myuser sudo

echo "cp -r /mnt/confs /home/myuser/"
sleep 2
cp -r /mnt/confs /home/myuser/

echo "cp -r /mnt/gpu_rel /home/myuser/"
sleep 2
cp -r /mnt/gpu_rel /home/myuser/

echo "cp -r /mnt/sys_start0.sh /home/myuser/"
sleep 2
cp -r /mnt/sys_start0.sh /home/myuser/

echo "chmod 755 /home/myuser/gpu_rel/gpu_*.sh"
sleep 2
chmod 755 /home/myuser/gpu_rel/gpu_*.sh

echo "chmod 755 /home/myuser/sys_*.sh"
sleep 2
chmod 755 /home/myuser/sys_*.sh

echo "reboot"
sleep 2
reboot
