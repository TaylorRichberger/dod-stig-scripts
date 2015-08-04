#!/bin/sh
printseverity() {
    cat <<"SEVERITY"
medium
SEVERITY
}

printtitle() {
    cat <<"TITLE"
The system must employ a local IPv4 firewall.
TITLE
}

printid() {
    cat <<"ID"
V-38555
ID
}

printdescription() {
    cat <<"DESCRIPTION"
The "iptables" service provides the system's host-based firewalling capability for IPv4 and ICMP.
DESCRIPTION
}

printfix() {
    cat <<"FIX"
The "iptables" service can be enabled with the following commands: # chkconfig iptables on# service iptables start
FIX
}

