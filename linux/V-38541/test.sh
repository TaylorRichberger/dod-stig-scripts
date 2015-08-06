#!/bin/sh

if ! auditctl -l | grep -qF "dir=/etc/selinux"; then
    echo 'selinux is not being audited properly'
    exit 1
fi

exit 0
