#!/bin/sh

if ! grep -qr bluetooth /etc/modprobe.*; then
    echo bluetooth devices are not disabled
    exit 1
fi

exit 0
