#!/bin/sh
printdescription() {
    cat <<"DESCRIPTION"
The "ip6tables" service provides the system's host-based firewalling capability for IPv6 and ICMPv6.
DESCRIPTION
}

printfix() {
    cat <<"FIX"
The "ip6tables" service can be enabled with the following commands: # chkconfig ip6tables on# service ip6tables start
FIX
}

printid() {
    cat <<"ID"
V-38551
ID
}

printseverity() {
    cat <<"SEVERITY"
medium
SEVERITY
}

printtitle() {
    cat <<"TITLE"
The operating system must connect to external networks or information systems only through managed IPv6 interfaces consisting of boundary protection devices arranged in accordance with an organizational security architecture. (Compliance can be achieved by disabling IPv6 .. recommended for ARM systems)
TITLE
}

