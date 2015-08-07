#!/bin/sh

if [ -n "$(rpm -V audit | grep '^......G')" ]; then
    echo "group ownership of files is wrong:"
    rpm -V audit | grep '^......G'
    exit 1
fi

exit 0
