#!/bin/sh

for prog in $(find / -type f \( -perm -4000 -o -perm -2000 \) 2>/dev/null); do
    if ! grep -qF "$prog" /etc/audit/audit.rules; then
        echo "-a always,exit -F path=$prog -F perm=x -F auid>=500 -F auid!=4294967295 -k privileged" >> /etc/audit/audit.rules
    fi
done

auditctl -R /etc/audit/audit.rules
