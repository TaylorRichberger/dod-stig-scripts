#!/bin/sh

if ! grep -qr sctp /etc/modprobe.*; then
    echo sctp is not disabled
    exit 1
fi

exit 0
