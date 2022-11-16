# wifi-on-debian-initramfs
A bunch of files for enabling Wifi in Debian initramfs

## Introduction
If you have encryted root partition, you can unlock your root partition over the network using ``dropbear-initramfs`` and/or ``mandos-client``. However Debian does not seem to provide a turnkey package that allow you to use Wifi at the initramfs stage. There doesn't seem to be that many tutorials around telling you how to do it. I decided to create this repository to help everyone.  

## Installation
1. You need to add kernel module of your Wifi device to ``/etc/initramfs-tools/modules``. For a lot of Intel devices (including ``Intel Corporation AC 1550i Wireless``), it is ``iwlwifi`` and ``iwlmvm``. 
2. You need to create ``wpa_supplicant.conf``. You can create one by using ``wpa_supplicant.conf.example`` as a template. 
3. Execute ``install.sh``

To uninstall, run ``uninstall.sh``. 

## Testing
This has been tested on the following systems:
- Lenovo IdeaPad Duet 3

## References
- The scripts in this repository is based on this Github gist https://gist.github.com/telenieko/d17544fc7e4b347beffa87252393384c.
- The Github gist above has an accompanying blog post https://www.marcfargas.com/2017/12/enable-wireless-networks-in-debian-initramfs/.
