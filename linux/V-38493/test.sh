#!/bin/sh

exitstatus=0

for log in $(grep "^log_file" /etc/audit/auditd.conf | sed s/^[^\/]*//); do
    logdir="$(dirname "$log")"
    if ! test_perms "$logdir" 755; then
        exitstatus=1
    fi
done

exit $exitstatus
