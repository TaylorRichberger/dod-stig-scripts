#!/bin/sh

for logfile in $(grep -oE '/[-\/a-zA-Z\._0-9]+($|[[:space:]])' /etc/rsyslog.conf); do
    if ! test_owner.sh "$logfile" root >/dev/null 2>&1; then
        chown root "$logfile"
    fi
done
