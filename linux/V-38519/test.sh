#!/bin/sh
exitstatus=0

for logfile in $(grep -roE '/[-\/a-zA-Z\._0-9]+($|[[:space:]])' /etc/rsyslog.*); do
    if ! ./log/test_group.sh "$logfile" root; then
        exitstatus=1
    fi
done

exit $exitstatus
