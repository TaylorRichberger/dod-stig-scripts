#!/bin/sh

if ! grep -qr rds /etc/modprobe.*; then
    echo rds is not disabled
    exit 1
fi

exit 0
