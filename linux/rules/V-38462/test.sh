#!/bin/sh

if [ -e /etc/rpmrc ] && grep -q nosignature /etc/rpmrc; then
    echo /etc/rpmrc contains nosignature
    exit 1
fi

if [ -e /usr/lib/rpm/rpmrc ] && grep -q nosignature /usr/lib/rpm/rpmrc; then
    echo /usr/lib/rpm/rpmrc contains nosignature
    exit 1
fi

exit 0
