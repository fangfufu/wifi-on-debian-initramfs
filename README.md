# wifi-on-debian-initramfs
A bunch of files for enabling Wifi in Debian initramfs

## Installation
1. You need to add your wifi kernel module to ``/etc/initramfs-tools/modules``
2. You need to create ``wpa_supplicant.conf``. You can create one by using ``wpa_supplicant.conf.example`` as a template. 
3. run ``install.sh``
