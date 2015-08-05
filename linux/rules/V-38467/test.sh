#!/bin/sh

if mount | grep 'on /var/log/audit '; then
    exit 0
fi

echo '/var/log/audit is not mounted on its own partition.'
exit 1
