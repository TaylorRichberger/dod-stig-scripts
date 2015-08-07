#!/bin/sh
if auditctl -l | grep -qF /etc/passwd && auditctl -l | grep -qF /etc/shadow && auditctl -l | grep -qF /etc/group && auditctl -l | grep -qF /etc/gshadow && auditctl -l | grep -qF /etc/security/opasswd; then
    exit 0
fi

echo 'account files are not being watched properly'
exit 1
