#!/bin/sh

for log in $(grep "^log_file" /etc/audit/auditd.conf | sed s/^[^\/]*//); do
    logdir="$(dirname "$log")"
    perms=0"$(stat -c %a "$logdir")"

    if [ "$((($perms | 0755) != 0755))" -eq 1 ]; then
        chmod 0755 "$logdir"
    fi
done
