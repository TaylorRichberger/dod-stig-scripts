#!/bin/sh

if [ -n "$(find / -type d -perm -0002 -uid +499 -print)" ]; then
    echo 'World-writable directories should be owned by root'
    exit 1
fi

exit 0
