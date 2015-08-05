#!/bin/sh

if grep -F 'disk_full_action' /etc/audit/auditd.conf | grep -qviE 'syslog|exec|single|halt'; then
    echo '/etc/audit/auditd.conf does not have disk_full_action set to syslog, exec, single, or halt'
    exit 1
fi

exit 0
