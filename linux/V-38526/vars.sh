#!/bin/sh
printdescription() {
    cat <<"DESCRIPTION"
Accepting "secure" ICMP redirects (from those gateways listed as default gateways) has few legitimate uses. It should be disabled unless it is absolutely required.
DESCRIPTION
}

printfix() {
    cat <<"FIX"
To set the runtime status of the "net.ipv4.conf.all.secure_redirects" kernel parameter, run the following command: # sysctl -w net.ipv4.conf.all.secure_redirects=0If this is not the system's default value, add the following line to "/etc/sysctl.conf": net.ipv4.conf.all.secure_redirects = 0
FIX
}

printseverity() {
    cat <<"SEVERITY"
medium
SEVERITY
}

printtitle() {
    cat <<"TITLE"
The system must not accept ICMPv4 secure redirect packets on any interface.
TITLE
}

printid() {
    cat <<"ID"
V-38526
ID
}

