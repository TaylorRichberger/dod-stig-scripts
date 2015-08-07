#!/bin/sh

if mount | grep -F 'nfs ' | grep -qvF nodev; then
    echo There are nfs mounts not mounted with the nodev option
    mount | grep -F 'nfs ' | grep -vF nodev
    exit 1
fi

exit 0
