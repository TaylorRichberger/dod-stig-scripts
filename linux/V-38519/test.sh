#!/bin/sh
exitstatus=0

for logfile in $(grep -hroE '/[-\/a-zA-Z\._0-9]+($|[[:space:]])' /etc/rsyslog.*); do
    if ! test_group "$logfile" root; then
        exitstatus=1
    fi
done

exit $exitstatus
