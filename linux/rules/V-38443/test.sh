#!/bin/sh

if [ "$(stat -c %U /etc/gshadow)" = root ]; then
    exit 0
fi
echo '/etc/gshadow not owned by root'
exit 1
