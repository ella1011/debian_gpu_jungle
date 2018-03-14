# debian_gpu_jungle
 
5 scripts, and 5 config files for getting

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
