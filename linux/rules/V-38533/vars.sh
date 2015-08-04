#!/bin/sh
printseverity() {
    cat <<"SEVERITY"
low
SEVERITY
}

printfix() {
    cat <<"FIX"
To set the runtime status of the "net.ipv4.conf.default.accept_redirects" kernel parameter, run the following command: # sysctl -w net.ipv4.conf.default.accept_redirects=0If this is not the system's default value, add the following line to "/etc/sysctl.conf": net.ipv4.conf.default.accept_redirects = 0
FIX
}

printtitle() {
    cat <<"TITLE"
The system must ignore ICMPv4 redirect messages by default.
TITLE
}

printdescription() {
    cat <<"DESCRIPTION"
This feature of the IPv4 protocol has few legitimate uses. It should be disabled unless it is absolutely required.
DESCRIPTION
}

printid() {
    cat <<"ID"
V-38533
ID
}

