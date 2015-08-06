#!/bin/sh

exitstatus=0

for logfile in $(grep -oE '/[-\/a-zA-Z\._0-9]+($|[[:space:]])' /etc/rsyslog.conf); do
    if ! ./lib/test_owner.sh "$logfile" root; then
        exitstatus=1
    fi
done

exit $exitstatus
