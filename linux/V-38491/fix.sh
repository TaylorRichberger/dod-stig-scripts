#!/bin/sh

if [ -e /etc/hosts.equiv ]; then
    rm /etc/hosts.equiv
fi

find / -xdev -type f -name '.rhosts' -delete

