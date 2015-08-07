#!/bin/sh

for logfile in $(grep -hroE '/[-\/a-zA-Z\._0-9]+($|[[:space:]])' /etc/rsyslog.*); do
    if [ -e "$logfile" ] && ! test_owner "$logfile" root >/dev/null 2>&1; then
        chown root "$logfile"
    fi
done
