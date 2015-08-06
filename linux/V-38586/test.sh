#!/bin/sh

if grep -qE '^SINGLE=/sbin/sulogin' /etc/sysconfig/init; then
    exit 0
fi

echo 'single logon must require authentication'
exit 1
