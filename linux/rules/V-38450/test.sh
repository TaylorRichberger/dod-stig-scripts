#!/bin/sh

if [ "$(stat -c %U /etc/passwd)" = root ]; then
    exit 0
fi
echo '/etc/passwd not owned by root'

exit 0
