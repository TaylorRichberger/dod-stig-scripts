#!/bin/sh
printfix() {
    cat <<"FIX"
To set the runtime status of the "net.ipv4.conf.default.accept_source_route" kernel parameter, run the following command: # sysctl -w net.ipv4.conf.default.accept_source_route=0If this is not the system's default value, add the following line to "/etc/sysctl.conf": net.ipv4.conf.default.accept_source_route = 0
FIX
}

printdescription() {
    cat <<"DESCRIPTION"
Accepting source-routed packets in the IPv4 protocol has few legitimate uses. It should be disabled unless it is absolutely required.
DESCRIPTION
}

printseverity() {
    cat <<"SEVERITY"
medium
SEVERITY
}

printtitle() {
    cat <<"TITLE"
The system must not accept IPv4 source-routed packets by default.
TITLE
}

printid() {
    cat <<"ID"
V-38529
ID
}

