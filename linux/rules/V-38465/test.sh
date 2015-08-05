#!/bin/sh
if [ -n "$(find -L /lib32 /lib64 /lib /usr/lib32 /usr/lib64 /usr/lib -type f -perm /022 2>/dev/null)" ]; then
    echo 'some libraries have group or world writability:'
    find -L /lib32 /lib64 /lib /usr/lib32 /usr/lib64 /usr/lib -type f -perm /022 2>/dev/null
    exit 1
fi

exit 0
