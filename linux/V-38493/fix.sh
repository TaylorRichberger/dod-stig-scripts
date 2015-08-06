#!/bin/sh

for log in $(grep "^log_file" /etc/audit/auditd.conf | sed s/^[^\/]*//); do
    logdir="$(dirname "$log")"

    if ! ./lib/test_perms.sh "$logdir" 0755 >/dev/null 2>&1; then
        chmod 0755 "$logdir"
    fi
done
