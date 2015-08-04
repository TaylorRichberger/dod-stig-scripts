#!/bin/sh
printfix() {
    cat <<"FIX"
The "ip6tables" service can be enabled with the following commands: # chkconfig ip6tables on# service ip6tables start
FIX
}

printid() {
    cat <<"ID"
V-38553
ID
}

printseverity() {
    cat <<"SEVERITY"
medium
SEVERITY
}

printdescription() {
    cat <<"DESCRIPTION"
The "ip6tables" service provides the system's host-based firewalling capability for IPv6 and ICMPv6.
DESCRIPTION
}

printtitle() {
    cat <<"TITLE"
The operating system must prevent public IPv6 access into an organizations internal networks, except as appropriately mediated by managed interfaces employing boundary protection devices.
TITLE
}

