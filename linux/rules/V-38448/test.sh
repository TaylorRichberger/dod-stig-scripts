#!/bin/sh

if [ "$(stat -c %G /etc/gshadow)" != root ]; then
    echo '/etc/gshadow not owned by root'
    exit 1
fi

exit 0
