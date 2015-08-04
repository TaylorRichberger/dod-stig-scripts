#!/bin/sh
printtitle() {
    cat <<"TITLE"
The system must ignore ICMPv6 redirects by default.
TITLE
}

printfix() {
    cat <<"FIX"
To set the runtime status of the "net.ipv6.conf.default.accept_redirects" kernel parameter, run the following command: # sysctl -w net.ipv6.conf.default.accept_redirects=0If this is not the system's default value, add the following line to "/etc/sysctl.conf": net.ipv6.conf.default.accept_redirects = 0
FIX
}

printdescription() {
    cat <<"DESCRIPTION"
An illicit ICMP redirect message could result in a man-in-the-middle attack.
DESCRIPTION
}

printseverity() {
    cat <<"SEVERITY"
medium
SEVERITY
}

printid() {
    cat <<"ID"
V-38548
ID
}

