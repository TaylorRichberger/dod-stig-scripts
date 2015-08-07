#!/bin/sh

lines="$(grep -EA1 '^session.*required.*pam_limits.so' /etc/pam.d/system-auth)"

if echo "$lines" | grep -qE 'pam_lastlog.so'; then
    exit 0
fi

echo 'pam_lastlog.so should be in system-auth'
exit 1
