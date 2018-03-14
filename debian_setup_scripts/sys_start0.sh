#!/bin/bash

sudo cp ~/confs/sources.list /etc/apt/sources.list

sudo apt-get update
sudo apt-get upgrade
sudo apt-get dist-upgrade

echo "                     "
echo " COPYING AND SOURCING BASH_RC AND -_ALIASES "
echo "                     "
sudo cp ~/confs/.bash_aliases ~/
sudo cp ~/confs/.bashrc ~/

source ~/.bash_aliases
source ~/.bashrc

echo "                     "
echo " INSTALLING ALL THE THINGS "
echo "                     "
sagi linux-image-amd64 xorg openbox obconf obmenu xfce4-terminal git subversion python3-pip python3-dev gcc
sagi synaptic tmux dolphin geany feh mplayer youtube-dl audacity lynis rkhunter ffmpeg mediainfo 
s pip3 install jupyter

echo "                     "
echo " SETTING UP OPENBOX "
echo "                     "
s mkdir -p ~/.config/openbox/
s cp /etc/X11/openbox/* -p ~/.config/openbox/
s cp ~/confs/.xinitrc ~/

echo "                     "
echo " REBOOTING - UPON BOOT, PROCEED to GPU INSTALLATION  "
echo " AS WELL AS STARTING SYN FOR CHROMIUM / FIREFOX INSTALLATION  "
echo "                     "
echo "         BYE!        "
echo "                     "

