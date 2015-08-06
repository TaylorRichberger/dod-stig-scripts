#!/bin/sh

if grep -qE '^:INPUT ACCEPT' /etc/sysconfig/ip6tables; then
    echo 'Default ip6tables policy is ACCEPT'
    exit 1
fi
exit 0
