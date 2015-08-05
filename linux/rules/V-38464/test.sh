#!/bin/sh

if grep -F 'disk_error_action' /etc/audit/auditd.conf | grep -qviE 'syslog|exec|single|halt'; then
    echo '/etc/audit/auditd.conf does not have disk_error_action set to syslog, exec, single, or halt'
    exit 1
fi

exit 0
