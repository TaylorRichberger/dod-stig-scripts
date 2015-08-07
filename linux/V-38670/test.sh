#!/bin/sh

if ! grep -qF aide /etc/crontab; then
    echo no aide executed in crontab
    exit 1
fi

exit 0

