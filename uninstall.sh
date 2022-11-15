#!/bin/bash
rm \
    "/etc/initramfs-tools/hooks/enable-wireless" \
    "/etc/initramfs-tools/scripts/init-premount/01-enable-wireless" \
    "/etc/initramfs-tools/scripts/local-bottom/kill_wireless" \
    "/etc/initramfs-tools/wpa_supplicant.conf"
update-initramfs -u
