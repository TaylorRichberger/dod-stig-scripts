#!/bin/sh

if grep -qE '^[[:space:]]*PrintLastLog[[:space:]]*yes' /etc/ssh/sshd_config; then
    exit 0
fi

echo "sshd doesn't have PrintLastLog equal to yes"
exit 1
