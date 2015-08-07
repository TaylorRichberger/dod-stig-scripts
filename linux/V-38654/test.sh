#!/bin/sh

if mount | grep -F 'nfs ' | grep -qvF nosuid; then
    echo There are nfs mounts not mounted with the nosuid option
    mount | grep -F 'nfs ' | grep -vF nosuid
    exit 1
fi

exit 0
