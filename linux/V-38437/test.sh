#!/bin/sh

if chkconfig --list autofs >/dev/null 2>/dev/null && chkconfig --list autofs | grep -qF ':on'; then
    echo 'autofs is enabled'
    exit 1
fi
exit 0
