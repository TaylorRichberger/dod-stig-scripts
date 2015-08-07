#!/bin/sh

exitstatus=0

for log in $(grep "^log_file" /etc/audit/auditd.conf | sed s/^[^\/]*//); do
    if ! ./log/test_group "$log" root; then
        exitstatus=1
    fi
done
exit $exitstatus
