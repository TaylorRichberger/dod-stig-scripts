#!/bin/sh
printid() {
    cat <<"ID"
V-38523
ID
}

printseverity() {
    cat <<"SEVERITY"
medium
SEVERITY
}

printdescription() {
    cat <<"DESCRIPTION"
Accepting source-routed packets in the IPv4 protocol has few legitimate uses. It should be disabled unless it is absolutely required.
DESCRIPTION
}

printfix() {
    cat <<"FIX"
To set the runtime status of the "net.ipv4.conf.all.accept_source_route" kernel parameter, run the following command: # sysctl -w net.ipv4.conf.all.accept_source_route=0If this is not the system's default value, add the following line to "/etc/sysctl.conf": net.ipv4.conf.all.accept_source_route = 0
FIX
}

printtitle() {
    cat <<"TITLE"
The system must not accept IPv4 source-routed packets on any interface.
TITLE
}

