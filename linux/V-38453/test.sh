#!/bin/sh

if [ -n "$(rpm -Va  | grep '^......G')" ]; then
    echo "group ownership of files is wrong:"
    rpm -Va  | grep '^......G'
    exit 1
fi

exit 0
