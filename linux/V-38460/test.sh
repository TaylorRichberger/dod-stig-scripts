#!/bin/sh

if [ -e /etc/exports ] && grep -q all_squash /etc/exports; then
    echo '/etc/exports contains all_squash'
    exit 1
fi

exit 0
