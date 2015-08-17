#!/bin/sh

if [ -e /etc/hosts.equiv ]; then
    echo '/etc/hosts.equiv exists'
    exit 1
fi

if [ -n "$(find / -xdev -type f -name '.rhosts')" ]; then
    echo .rhosts found
    find / -xdev -type f -name '.rhosts'
    exit 1
fi

exit 0
