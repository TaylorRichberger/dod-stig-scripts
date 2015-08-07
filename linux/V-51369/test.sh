#!/bin/sh

if ! grep -qE '^[[:space:]]*SELINUXTYPE=targeted' /etc/selinux/config; then
    echo 'selinux type must be set to targeted'
    exit 1
fi

exit 0
