#!/bin/bash

# TENSORFLOW -> FIRST CUDnn

read -p "chnme was run? " -n 1 -r
echo "proceeding to cudnn 7.05 install"
if [[ $REPLY =~ ^[Yy]$ ]]
then

echo "                "
echo " running nvd "
nvd
echo "sagi python3-numpy python3-wheel python3-dev python3-pip"
echo "                "
sagi python3-numpy python3-wheel python3-dev python3-pip

fi
read -p "All ok? Install cudnn now?" -n 1 -r
echo "                "
if [[ $REPLY =~ ^[Yy]$ ]]
thens dpkg -i libcudnn7-doc_7.0.5.15-1+cuda9.0_amd64.deb

cd /home/username/gpu_rel/cudnn
s dpkg -i libcudnn7_7.0.5.15-1+cuda9.0_amd64.deb
fi

read -p "All ok? Install cudnn dev now?" -n 1 -r
echo "                "
if [[ $REPLY =~ ^[Yy]$ ]]
then
s dpkg -i libcudnn7-dev_7.0.5.15-1+cuda9.0_amd64.deb
fi

read -p "All ok? Install cudnn doc now?" -n 1 -r
echo "                "
if [[ $REPLY =~ ^[Yy]$ ]]
then
s dpkg -i libcudnn7-doc_7.0.5.15-1+cuda9.0_amd64.deb
fi

read -p "If all is ok, proceeding to verify cudnn installation?" -n 1 -r
echo "                "
if [[ $REPLY =~ ^[Yy]$ ]]
then
s cp -r /usr/src/cudnn_samples_v7/ $HOME
cd $HOME/cudnn_samples_v7/mnistCUDNN
make clean
make
./mnistCUDNN
echo "If succeeded, proceed to the last script"
echo "                "
fi
