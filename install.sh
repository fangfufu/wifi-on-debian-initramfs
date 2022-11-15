#!/bin/bash -e
if [ -f wpa_supplicant.conf ]; then
  cp -r initramfs-tools /etc/
  cp wpa_supplicant.conf /etc/initramfs-tools
  update-initramfs -u
else
  echo "Error: wpa_supplicant.conf not found, aborting installation"
  echo "You can create wpa_supplicant.conf by using wpa_supplicant.conf.example as a template."
fi
