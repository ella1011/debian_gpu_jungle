#!/bin/bash

echo "installing linux headers"
sagi linux-headers-$(uname -r)
echo "            "
echo "copying confs & updating initramfs"
echo "            "
s cp ~/confs/blacklist-nouveau.conf /etc/modprobe.d/
s update-initramfs -u
echo "            "
echo "starting cuda installer #1"
s sh cuda_9.0.176_384.81_linux.run
echo "            "
echo "starting cuda installer #2"
s sh cuda_9.0.176.1_linux.run
echo "            "
echo "And some more conf-things: "
echo "            "
s mkdir /usr/lib/systemd/system
s cp -f ~/confs/nvidia-persistenced.service /usr/lib/systemd/system/
s systemctl enable nvidia-persistenced

read -p "Does output equal: 'Created symlink /etc/systemd/system/multi-user.target.wants/nvidi ...etc?' " answer
case ${answer:0:1} in
    y|Y )
        echo Rebooting
        xr
    ;;
    * )
        echo Exiting script
        exit 1
    ;;
esac

