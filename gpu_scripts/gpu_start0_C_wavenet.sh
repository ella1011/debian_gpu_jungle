#!/bin/bash

# upon each boot, run "chnme"

# NOTE: this will fail the first time, then exit, chnme again, retry and it should work!

read -p "OK to proceed? Ran chnme upon boot? " answer
case ${answer:0:1} in
    y|Y )
        echo "proceeding to cudnn 7.05 install:"
        echo "installing libcupti-dev (instead of command-line-tools!)"
        sagi libcupti-dev
        # TENSORFLOW -> ACTUAL TENSORFLOW
        echo "installing tensorflow gpu 1.6"
        s pip3 install tensorflow-gpu
        echo "s pip3 install tensorflow-gpu"
        # backup: pip3 install --upgrade https://storage.googleapis.com/tensorflow/linux/gpu/tensorflow_gpu-1.0.1-cp35-cp35m-linux_x86$
    ;;
    * )
        echo "Exiting script"
        exit 1
    ;;
esac

read -p "OK to proceed & validate install? " answer
case ${answer:0:1} in
    y|Y )
        echo "Validating tensorflow install"
        python3 tensorflow_install_verification.py
   ;;
    * )
        echo "Exiting script"
        exit 1
    ;;
esac

read -p "OK to proceed & validate install? " answer
case ${answer:0:1} in
    y|Y )
        echo "Validating tensorflow install"
        python3 tensorflow_install_verification.py
   ;;
    * )
        echo "Exiting script"
        exit 1
    ;;
esac
 
read -p "OK to proceed & install Wavenet (for gpu)?" answer
case ${answer:0:1} in
    y|Y )
        echo "WAVENET: cloning & requirements & corpus copying"
        python3 tensorflow_install_verification.py      
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
        echo "Ready to test Wavenet now."
        echo "Run:"
        echo "python3 train.py --data_dir=corpus #check for flags if applicable to your usecase"
        echo "Note: training a 12 sec 16 khz wav file on a gtx 1080 11gb takes a bit over a day!"
        echo "                "
   ;;
    * )
        echo "Exiting script"
        exit 1
    ;;
esac
