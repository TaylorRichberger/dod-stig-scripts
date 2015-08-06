#!/bin/sh

if grep -qF EACCES /etc/audit/audit.rules && grep -qF EPERM /etc/audit/audit.rules; then
    exit 0
fi

echo 'EACCES and EPERM must be audited'
exit 1
