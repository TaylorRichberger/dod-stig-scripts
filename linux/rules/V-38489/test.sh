#!/bin/sh

if rpm -q aide >/dev/null 2>&1; then
    exit 0
fi

echo 'AIDE needs to be installed'
exit 1
