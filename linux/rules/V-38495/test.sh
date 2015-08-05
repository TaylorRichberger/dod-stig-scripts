#!/bin/sh

for log in $(grep "^log_file" /etc/audit/auditd.conf | sed s/^[^\/]*//); do
    if [ "$(stat -c %U "$log")" != root ]; then
        echo "audit log $log not owned by root"
        exit 1
    fi
done

exit 0
