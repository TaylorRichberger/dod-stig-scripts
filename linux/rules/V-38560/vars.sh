#!/bin/sh
printdescription() {
    cat <<"DESCRIPTION"
The "iptables" service provides the system's host-based firewalling capability for IPv4 and ICMP.
DESCRIPTION
}

printseverity() {
    cat <<"SEVERITY"
medium
SEVERITY
}

printid() {
    cat <<"ID"
V-38560
ID
}

printtitle() {
    cat <<"TITLE"
The operating system must connect to external networks or information systems only through managed IPv4 interfaces consisting of boundary protection devices arranged in accordance with an organizational security architecture.
TITLE
}

printfix() {
    cat <<"FIX"
The "iptables" service can be enabled with the following commands: # chkconfig iptables on# service iptables start
FIX
}

