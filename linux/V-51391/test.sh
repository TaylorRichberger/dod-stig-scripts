#!/bin/sh

if [ ! -e /var/lib/aide/aide.db.gz ]; then
    echo An adie db should be installed
    exit 1
fi

exit 0
