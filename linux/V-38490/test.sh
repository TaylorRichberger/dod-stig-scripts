#!/bin/sh

if ! grep -qr usb-storage /etc/modprobe.*; then
    echo usb-storage devices are not disabled
    exit 1
fi

exit 0
