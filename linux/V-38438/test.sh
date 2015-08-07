#!/bin/sh

if grep -qE 'audit=1' /etc/grub.conf; then
    exit 0
fi
echo 'auditing is disabled'
exit 1
