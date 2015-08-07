#!/bin/sh

if ! grep -qr ipv6 /etc/modprobe.*; then
    echo ipv6 is not disabled
    exit 1
fi

exit 0
