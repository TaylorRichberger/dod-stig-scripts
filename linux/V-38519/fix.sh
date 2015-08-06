#!/bin/sh

for logfile in $(grep -roE '/[-\/a-zA-Z\._0-9]+($|[[:space:]])' /etc/rsyslog.*); do
    if ! ./log/test_group.sh "$logfile" root >/dev/null 2>&1; then
        chgrp root "$logfile"
    fi
done
