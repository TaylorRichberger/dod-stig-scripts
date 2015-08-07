#!/bin/sh

if grep -qE '^server[[:space:]]' /etc/ntp.conf; then
    exit 0
fi

echo 'Must set up an ntp timeserver'
exit 1
