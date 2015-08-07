#!/bin/sh

for log in $(grep "^log_file" /etc/audit/auditd.conf | sed s/^[^\/]*//); do

    if ! test_perms "$log" 0644 >/dev/null 2>&1; then
        chmod 0644 $log
    fi
done

