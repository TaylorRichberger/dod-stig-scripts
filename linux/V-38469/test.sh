#!/bin/sh
if [ -n "$(find -L /bin /usr/bin /usr/local/bin /sbin /usr/sbin /usr/local/sbin -type f -perm /022 2>/dev/null)" ]; then
    echo 'some binaries have group or world writability:'
    find -L /bin /usr/bin /usr/local/bin /sbin /usr/sbin /usr/local/sbin -type f -perm /022 2>/dev/null
    exit 1
fi

exit 0
