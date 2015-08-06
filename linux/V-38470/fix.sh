#!/bin/sh

if grep -qE '^[[:space:]]*space_left_action' /etc/audit/auditd.conf; then
    sed -i 's/space_left_action .*/space_left_action = email/' /etc/audit/auditd.conf
else
    echo 'space_left_action = email' >> /etc/audit/auditd.conf
fi

