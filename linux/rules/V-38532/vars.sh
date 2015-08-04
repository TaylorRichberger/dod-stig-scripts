#!/bin/sh
printseverity() {
    cat <<"SEVERITY"
medium
SEVERITY
}

printdescription() {
    cat <<"DESCRIPTION"
Accepting "secure" ICMP redirects (from those gateways listed as default gateways) has few legitimate uses. It should be disabled unless it is absolutely required.
DESCRIPTION
}

printid() {
    cat <<"ID"
V-38532
ID
}

printfix() {
    cat <<"FIX"
To set the runtime status of the "net.ipv4.conf.default.secure_redirects" kernel parameter, run the following command: # sysctl -w net.ipv4.conf.default.secure_redirects=0If this is not the system's default value, add the following line to "/etc/sysctl.conf": net.ipv4.conf.default.secure_redirects = 0
FIX
}

printtitle() {
    cat <<"TITLE"
The system must not accept ICMPv4 secure redirect packets by default.
TITLE
}

