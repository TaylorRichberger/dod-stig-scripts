#!/bin/sh

if rpm -qi xorg-x11-server-common >/dev/null 2>&1; then
    echo 'X should not be installed'
    exit 1
fi

exit 0
