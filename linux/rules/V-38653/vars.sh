#!/bin/sh
printid() {
    cat <<"ID"
V-38653
ID
}

printfix() {
    cat <<"FIX"
Edit "/etc/snmp/snmpd.conf", remove default community string "public". Upon doing that, restart the SNMP service: # service snmpd restart
FIX
}

printdescription() {
    cat <<"DESCRIPTION"
Presence of the default SNMP password enables querying of different system aspects and could result in unauthorized knowledge of the system.
DESCRIPTION
}

printtitle() {
    cat <<"TITLE"
The snmpd service must not use a default password.
TITLE
}

printseverity() {
    cat <<"SEVERITY"
high
SEVERITY
}

