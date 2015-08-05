#!/bin/sh

if grep -qE '^vc/[[:digit:]]' /etc/securetty; then
    echo 'root login through virtual console devices is permitted'
    exit 1
fi

exit 0
