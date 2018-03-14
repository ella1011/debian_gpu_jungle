#!/bin/bash

echo "apt-get install sudo"
apt-get install sudo

echo "adduser myuser sudo"
adduser myuser sudo

echo "cp -r /mnt/confs /home/myuser/"
cp -r /mnt/confs /home/myuser/

echo "cp -r /mnt/gpu_rel /home/myuser/"
cp -r /mnt/gpu_rel /home/myuser/

echo "cp -r /mnt/sys_start0.sh /home/myuser/"
cp -r /mnt/sys_start0.sh /home/myuser/

echo "chmod 755 /home/myuser/gpu_rel/gpu_*.sh"
chmod 755 /home/frank/gpu_rel/gpu_*.sh

echo "chmod 755 /home/myuser/sys_*.sh"
chmod 755 /home/myuser/sys_*.sh

echo "reboot"
reboot
