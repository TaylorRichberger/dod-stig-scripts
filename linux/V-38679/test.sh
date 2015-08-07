#!/bin/sh

if grep -qF 'BOOTPROTO=dhcp' /etc/sysconfig/network-scripts/ifcfg-*; then
    echo 'An interface uses dhcp!'
    grep -F 'BOOTPROTO=dhcp' /etc/sysconfig/network-scripts/ifcfg-*
    exit 1
fi
exit 0
