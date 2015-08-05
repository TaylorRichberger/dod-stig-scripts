#!/bin/sh

if [ -e /etc/hosts.equiv ]; then
    echo '/etc/hosts.equiv exists'
    exit 1
fi

if [ -n "$(find / -type f -name '.rhosts')" ]; then
    echo .rhosts found
    find / -type f -name '.rhosts'
    exit 1
fi

exit 0
