#!/bin/sh

if auditctl -l | grep -qF unlink && auditctl -l | grep -qF unlinkat && auditctl -l | grep -qF rename && auditctl -l | grep -qF renameat; then
    exit 0
fi

echo 'the audit system must watch unlink, unlinkat, rename, and renameat'
exit 1
