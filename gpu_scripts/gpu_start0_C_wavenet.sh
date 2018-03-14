#!/bin/bash

# upon each boot, run "chnme"

# NOTE: this will fail the first time, then exit, chnme again, retry and it should work!

read -p "OK to proceed? Check if not forgotten to chnme upon boot?" -n 1 -r
echo "                 "
if [[ $REPLY =~ ^[Yy]$ ]]
then
echo "                 "
echo "installing libcupti-dev instead of command-line-tools"
sagi libcupti-dev
echo "                 "
# TENSORFLOW -> ACTUAL TENSORFLOW
echo "installing tensorflow gpu 1.6"
echo "                 "
s pip3 install tensorflow-gpu
echo "s pip3 install tensorflow-gpu"
echo "                 "
#pip3 install --upgrade https://storage.googleapis.com/tensorflow/linux/gpu/tensorflow_gpu-1.0.1-cp35-cp35m-linux_x86$
fi

read -p "OK to proceed?" -n 1 -r
echo "                "
if [[ $REPLY =~ ^[Yy]$ ]]
then
echo "Validating tensorflow install"
python3 tensorflow_install_verification.py
echo "                "
fi

read -p "OK to proceed?" -n 1 -r
echo "                "
if [[ $REPLY =~ ^[Yy]$ ]]frank
then
echo "WAVENET: cloning & requirements & corpus copying"
echo "                "
cd /home/username/gpu_rel
s git clone https://github.com/ibab/tensorflow-wavenet.git
cd tensorflow-wavenet/
sudo pip3 install -r requirements_gpu.txt

s cp -r ~/gpu_rel/corpus /home/username/gpu_rel/tensorflow-wavenet/
echo "                "
echo "Also installing gpustat & htop & lm-sensors"
s pip3 install gpustat
sagi htop
sagi lm-sensors
echo "                "
echo "Ready to test wavenet now, run:"
echo "python3 train.py --data_dir=corpus"
echo "                "

fi
