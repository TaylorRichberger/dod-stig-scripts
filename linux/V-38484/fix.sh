#!/bin/sh

if grep -qE '[[:space:]]*PrintLastLog' /etc/ssh/sshd_config; then
    sed -i 's/PrintLastLog.*/PrintLastLog yes/' /etc/ssh/sshd_config
else
    echo PrintLastLog yes >> /etc/ssh/sshd_config
fi
