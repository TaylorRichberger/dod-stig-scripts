#!/bin/sh
printseverity() {
    cat <<"SEVERITY"
medium
SEVERITY
}

printtitle() {
    cat <<"TITLE"
The operating system must prevent public IPv4 access into an organizations internal networks, except as appropriately mediated by managed interfaces employing boundary protection devices.
TITLE
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

printid() {
    cat <<"ID"
V-38512
ID
}

