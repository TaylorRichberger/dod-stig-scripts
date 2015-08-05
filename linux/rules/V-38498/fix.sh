#!/bin/sh

for log in $(grep "^log_file" /etc/audit/auditd.conf | sed s/^[^\/]*//); do
    perms=0"$(stat -c %a "$log")"

    if [ "$((($perms | 0644) != 644))" -eq 1 ]; then
        chmod 0644 $log
    fi
done

