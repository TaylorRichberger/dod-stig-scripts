#!/bin/sh

if ! grep -qr dccp /etc/modprobe.*; then
    echo dccp is not disabled
    exit 1
fi

exit 0
