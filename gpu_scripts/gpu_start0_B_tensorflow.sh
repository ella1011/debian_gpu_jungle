#!/bin/bash

# TENSORFLOW -> FIRST CUDnn

read -p "chnme was run? " answer
case ${answer:0:1} in
    y|Y )
        echo "proceeding to cudnn 7.05 install"
        echo "running nvd"
        nvd
        echo "running sagi python3-numpy python3-wheel python3-dev python3-pi"
        echo "         "
        sagi python3-numpy python3-wheel python3-dev python3-pi
    ;;
    * )
        echo "Exiting script"
        exit 1
    ;;
esac

read -p "All ok? Proceed to install cudnn now? " answer
case ${answer:0:1} in
    y|Y )
        echo "Running:"      
        echo "s dpkg -i libcudnn7-doc_7.0.5.15-1+cuda9.0_amd64.deb"
        echo "cd /home/username/gpu_rel/cudnn"
        echo "s dpkg -i libcudnn7_7.0.5.15-1+cuda9.0_amd64.deb"
        s dpkg -i libcudnn7-doc_7.0.5.15-1+cuda9.0_amd64.deb
        cd /home/username/gpu_rel/cudnn
        s dpkg -i libcudnn7_7.0.5.15-1+cuda9.0_amd64.deb
    ;;
    * )
        echo "Exiting script"
        exit 1
    ;;
esac

read -p "All ok? Proceed to install cudnn-DEV now? " answer
case ${answer:0:1} in
    y|Y )
        echo "s dpkg -i libcudnn7-dev_7.0.5.15-1+cuda9.0_amd64.deb"
        s dpkg -i libcudnn7-dev_7.0.5.15-1+cuda9.0_amd64.deb

    ;;
    * )
        echo "Exiting script"
        exit 1
    ;;
esac

read -p "All ok? Proceed to install cudnn-DOC now? " answer
case ${answer:0:1} in
    y|Y )
        echo "Running:"      
        echo "s dpkg -i libcudnn7-doc_7.0.5.15-1+cuda9.0_amd64.deb"
        s dpkg -i libcudnn7-doc_7.0.5.15-1+cuda9.0_amd64.deb
    ;;
    * )
        echo "Exiting script"
        exit 1
    ;;
esac

read -p "If all is ok, proceeding to verify cudnn installation? " answer
case ${answer:0:1} in
    y|Y )
        echo "verifying: mnistCUDNN"
        s cp -r /usr/src/cudnn_samples_v7/ $HOME
        cd $HOME/cudnn_samples_v7/mnistCUDNN
        make clean
        make
        ./mnistCUDNN
        echo "If succeeded, proceed to the last script"
        echo "                "    ;;
    * )
        echo "Exiting script"
        exit 1
    ;;
esac
