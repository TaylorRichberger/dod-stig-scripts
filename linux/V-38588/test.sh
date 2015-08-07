#!/bin/sh

if grep -qE '^PROMPT=no' /etc/sysconfig/init; then
    exit 0
fi

echo 'startup prompt should not be an option'
exit 1
