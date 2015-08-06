#!/bin/sh

if grep -qE '^[[:space:]]*gpgcheck=1' /etc/yum.conf; then
    exit 0
fi

echo 'yum.conf needs gpgcheck to be 1'
exit 1
