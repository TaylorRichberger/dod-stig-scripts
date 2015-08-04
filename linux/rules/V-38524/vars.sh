#!/bin/sh
printtitle() {
    cat <<"TITLE"
The system must not accept ICMPv4 redirect packets on any interface.
TITLE
}

printfix() {
    cat <<"FIX"
To set the runtime status of the "net.ipv4.conf.all.accept_redirects" kernel parameter, run the following command: # sysctl -w net.ipv4.conf.all.accept_redirects=0If this is not the system's default value, add the following line to "/etc/sysctl.conf": net.ipv4.conf.all.accept_redirects = 0
FIX
}

printseverity() {
    cat <<"SEVERITY"
medium
SEVERITY
}

printid() {
    cat <<"ID"
V-38524
ID
}

printdescription() {
    cat <<"DESCRIPTION"
Accepting ICMP redirects has few legitimate uses. It should be disabled unless it is absolutely required.
DESCRIPTION
}

