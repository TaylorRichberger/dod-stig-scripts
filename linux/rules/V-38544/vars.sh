#!/bin/sh
printtitle() {
    cat <<"TITLE"
The system must use a reverse-path filter for IPv4 network traffic when possible by default.
TITLE
}

printdescription() {
    cat <<"DESCRIPTION"
Enabling reverse path filtering drops packets with source addresses that should not have been able to be received on the interface they were received on. It should not be used on systems which are routers for complicated networks, but is helpful for end hosts and routers serving small networks.
DESCRIPTION
}

printid() {
    cat <<"ID"
V-38544
ID
}

printfix() {
    cat <<"FIX"
To set the runtime status of the "net.ipv4.conf.default.rp_filter" kernel parameter, run the following command: # sysctl -w net.ipv4.conf.default.rp_filter=1If this is not the system's default value, add the following line to "/etc/sysctl.conf": net.ipv4.conf.default.rp_filter = 1
FIX
}

printseverity() {
    cat <<"SEVERITY"
medium
SEVERITY
}

