#!/bin/sh

if [ -n "$(find / -xdev -type f -perm -002)" ]; then
    echo 'there are world-writable files on the system'
    exit 1
fi
exit 0
