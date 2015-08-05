#!/bin/sh

if [ "$(stat -c %G /etc/group)" != root ]; then
    echo "/etc/group not group owned by root"
    exit 1
fi
exit 0
