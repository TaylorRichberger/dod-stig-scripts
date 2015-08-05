#!/bin/sh

if [ "$(stat -c %G /etc/passwd)" != root ]; then
    echo '/etc/passwd not owned by root'
    exit 1
fi

exit 0
