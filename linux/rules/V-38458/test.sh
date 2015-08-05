#!/bin/sh

if [ "$(stat -c %U /etc/group)" = root ]; then
    exit 0
fi
echo '/etc/group not owned by root'
exit 1
