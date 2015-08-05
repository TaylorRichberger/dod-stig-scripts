#!/bin/sh

if grep -F 'space_left_action' /etc/audit/auditd.conf | grep -viF 'email'; then
    echo '/etc/audit/auditd.conf does not have space_left_action set to email'
    exit 1
fi

exit 0
