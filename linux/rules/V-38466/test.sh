#!/bin/sh
if [ -n "$(find -L /lib32 /lib64 /lib /usr/lib32 /usr/lib64 /usr/lib -type f \! -user root 2>/dev/null)" ]; then
    echo 'some libraries are not owned by root:'
    find -L /lib32 /lib64 /lib /usr/lib32 /usr/lib64 /usr/lib -type f \! -user root 2>/dev/null
    exit 1
fi

exit 0
