#!/bin/sh

if chkconfig --list rhnsd >/dev/null 2>/dev/null && chkconfig --list autofs | grep -qF ':on'; then
    echo 'rhnsd is enabled'
    exit 1
fi

exit 0
