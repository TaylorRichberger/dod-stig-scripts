#!/bin/sh

if auditctl -l | grep -qF sethostname && auditctl -l | grep -qF setdomainname && auditctl -l | grep -qF /etc/issue && auditctl -l | grep -qF /etc/issue.net && auditctl -l | grep -qF /etc/hosts && auditctl -l | grep -qF /etc/sysconfig/network; then
    exit 0
fi

echo "network config changes aren't being audited properly"
exit 1
