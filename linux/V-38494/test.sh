#!/bin/sh

if grep -qE '^ttyS[[:digit:]]' /etc/securetty; then
    echo 'root login through serial console devices is permitted'
    exit 1
fi

exit 0
