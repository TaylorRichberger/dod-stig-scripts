#!/bin/sh

mkdir -p /etc/modprobe.d

echo 'install usb-storage /bin/false' >> /etc/modprobe.d/usb.conf
