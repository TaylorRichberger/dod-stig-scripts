#!/bin/sh

if ! grep -qr tipc /etc/modprobe.*; then
    echo tipc is not disabled
    exit 1
fi

exit 0
