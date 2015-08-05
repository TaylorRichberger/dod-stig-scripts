#!/bin/sh

if yum check-update >/dev/null 2>&1; then
    exit 0
fi

echo 'updates need to be installed'
yum check-update
exit 0
