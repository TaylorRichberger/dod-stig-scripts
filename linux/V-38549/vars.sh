#!/bin/sh
printfix() {
    cat <<"FIX"
The "ip6tables" service can be enabled with the following commands: # chkconfig ip6tables on# service ip6tables start
FIX
}

printid() {
    cat <<"ID"
V-38549
ID
}

printtitle() {
    cat <<"TITLE"
The system must employ a local IPv6 firewall.
TITLE
}

printdescription() {
    cat <<"DESCRIPTION"
The "ip6tables" service provides the system's host-based firewalling capability for IPv6 and ICMPv6.
DESCRIPTION
}

printseverity() {
    cat <<"SEVERITY"
medium
SEVERITY
}

