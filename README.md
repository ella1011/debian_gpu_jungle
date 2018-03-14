# debian_gpu_jungle
 
6 scripts, and 5 config files for getting

- Debian 9.3
- Openbox

to work properly with:

- Nvidia/CUDA 9.0
- Tensorflow 1.6
- Wavenet (https://github.com/ibab/tensorflow-wavenet)


SHORT NOTES:

- I'm using some aliases/shortcuts that I've created to make my typing life happier.
- As I've had to reinstall the system several times due to the nvidia jungle, I've stored the scripts + config files on an external disk. I mount this in one of the first scripts and copy the other scripts + configuration files to the sda (on which the debian is installed). If you have a different setup, be sure to edit this, and look up the correcg sdX using "fdisk -l".
- I am not fully certain whether it would work without the current addition of "contrib" and "non-free" in the source.list but I have placed it there during one of the tries and you could try leaving this out, perhaps it works just as well (if I try it out, I will edit it here and comment)


PRETTY RELEVANT; IT WON'T WORK IF YOU DON'T DO THESE THINGS:

- in bash.rc, be sure to scroll down to line 117 and change "export PATH=/home/user/gpu_dir:$PATH" to whatever your username and directory is with all the nvidia/cuda related files.
- the proper filenames for bash_aliases and bashrc are (respectivey) ".bash_aliases" and ".bashrc" -> don't forget the dot, as it's a hidden file
- while installing debian if you wish to use only Openbox, make sure to not forget to deselect the default options regarding the desktop environment during one of the last prompts. I selected only "ssh server" and the "standard system utilities" 
https://debian-handbook.info/browse/stable/images/inst-tasksel.png
- go to "debian_setup_scripts" and in "su_start0.sh" replace "myuser" with your own username, as well as the other directory names
- go to "gpu_scripts" and "gpu_start0_B_tensorflow.sh" and in line 22 change "username" with your own, as well as the next directory if you've named it differently
- do the same for "gpu_start0_C_wavenet.sh" on lines 39 and 44
- downloads that need to be in place:
- cuda_9.0.176_384.81_linux.run (initial installer) https://developer.nvidia.com/cuda-90-download-archive?target_os=Linux&target_arch=x86_64&target_distro=Ubuntu&target_version=1604&target_type=runfilelocal
- cuda_9.0.176.1_linux.run (update patch)
- libcudnn7_7.0.5.15-1+cuda9.0_amd64.deb (through https://developer.nvidia.com/cudnn you need to make an account, and download the 7.0.05.15 versions of below files -> this was the one that worked, not the other 7.05 or 7.1 versions)
- you should end up making a directory "cudnn" with these files:
- libcudnn7_7.0.5.15-1+cuda9.0_amd64.deb
- libcudnn7-dev_7.0.5.15-1+cuda9.0_amd64.deb
- libcudnn7-doc_7.0.5.15-1+cuda9.0_amd64.deb



ORDER OF THE SCRIPTS:

- Start with https://github.com/ella1011/debian_gpu_jungle/blob/master/debian_setup_scripts/su_start0.sh
- and upon (automatic) reboot, run https://github.com/ella1011/debian_gpu_jungle/blob/master/debian_setup_scripts/sys_start0.sh
- and now things should go by themselves, promting you for hitting y/enter/no and so on.

- You have now time to watch this with a relaxing tea in your hand: https://www.youtube.com/watch?v=iYWzMvlj2RQ

