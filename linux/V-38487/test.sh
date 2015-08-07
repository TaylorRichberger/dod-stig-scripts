#!/bin/sh

if grep -qE '^[[:space:]]*gpgcheck=0' /etc/yum.conf; then
    echo 'yum.conf needs gpgcheck to not be 0'
    exit 1
fi

exit 0
