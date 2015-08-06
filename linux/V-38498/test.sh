#!/bin/sh

exitstatus=0

for log in $(grep "^log_file" /etc/audit/auditd.conf | sed s/^[^\/]*//); do
    if ! ./lib/test_perms.sh "$log" 644; then
        exitstatus=1
    fi
done

exit $exitstatus
