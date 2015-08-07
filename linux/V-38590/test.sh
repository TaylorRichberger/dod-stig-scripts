#!/bin/sh

if rpm -q screen >/dev/null 2>&1; then
    exit 0
fi

echo 'screen should be installed'
exit 1
