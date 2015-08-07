#!/bin/sh

if grep -qF logrotate /var/log/cron*; then
    exit 0
fi

echo 'logrotate should be installed and running'
exit 1
