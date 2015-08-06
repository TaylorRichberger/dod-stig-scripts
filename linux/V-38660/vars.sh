#!/bin/sh
printid() {
    cat <<"ID"
V-38660
ID
}

printfix() {
    cat <<"FIX"
Edit "/etc/snmp/snmpd.conf", removing any references to "v1", "v2c", or "com2sec". Upon doing that, restart the SNMP service: # service snmpd restart
FIX
}

printdescription() {
    cat <<"DESCRIPTION"
Earlier versions of SNMP are considered insecure, as they potentially allow unauthorized access to detailed system management information.
DESCRIPTION
}

printseverity() {
    cat <<"SEVERITY"
medium
SEVERITY
}

printtitle() {
    cat <<"TITLE"
The snmpd service must use only SNMP protocol version 3 or newer.
TITLE
}

