#!/bin/sh

if grep -qE '^INACTIVE=35' /etc/default/useradd; then
    exit 0
fi

echo 'Accounts should be disabled after a period of inactivity'
exit 1
