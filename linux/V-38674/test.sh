#!/bin/sh

if ! grep -qE '^id:3:initdefault:' /etc/inittab; then
    echo Default runlevel is not 3
    exit 1
fi

exit 0
