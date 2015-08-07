#!/bin/sh

if [ -e /etc/snmp/snmpd.conf ] && grep -qE '^[^#]+public' /etc/snmp/snmpd.conf; then
    echo SNMP should not be using a default community string
    grep -E '^[^#]+public' /etc/snmp/snmpd.conf
    exit 1
fi
