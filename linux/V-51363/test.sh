#!/bin/sh

if ! grep -qE '^[[:space:]]*SELINUX=enforcing' /etc/selinux/config; then
    echo 'selinux must be set to enforcing'
    exit 1
fi

exit 0
