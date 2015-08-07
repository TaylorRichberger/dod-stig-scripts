#!/bin/sh

if grep -qE '^:FORWARD DROP' /etc/sysconfig/iptables; then
    exit 0
fi

echo 'The default iptables FORWARD policy is not DROP'
exit 1
