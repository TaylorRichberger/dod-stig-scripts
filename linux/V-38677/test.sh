#!/bin/sh

if grep -qF insecure_locks /etc/exports; then
    echo nfs uses insecure locking
    exit 1
fi
exit 0
