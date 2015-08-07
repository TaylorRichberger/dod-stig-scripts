#!/bin/sh

if [ -e /etc/snmp/snmpd.conf ] && grep -qE 'v1|v2c|com2sec' /etc/snmp/snmpd.conf; then
    echo 'v1, v2c, and com2sec should not be used with snmp'
    exit 1
fi
