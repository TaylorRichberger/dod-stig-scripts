#!/bin/sh

if mount | grep 'on /var/log '; then
    exit 0
fi

echo '/var/log is not mounted on its own partition.'
exit 1
