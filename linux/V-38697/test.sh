#!/bin/sh

if [ -n "$(find / -xdev -type d -perm -002 \! -perm -1000)" ]; then
    echo 'World-writable directories should have the sticky-bit set'
    exit 1
fi

exit 0
