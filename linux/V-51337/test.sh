#!/bin/sh

if grep -qF 'selinux=0' /etc/grub.conf; then
    echo 'selinux must be enabled at boot'
    exit 1
fi
exit 0
