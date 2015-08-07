#!/bin/sh
printfix() {
    cat <<"FIX"
To set the runtime status of the "net.ipv4.conf.all.rp_filter" kernel parameter, run the following command: # sysctl -w net.ipv4.conf.all.rp_filter=1If this is not the system's default value, add the following line to "/etc/sysctl.conf": net.ipv4.conf.all.rp_filter = 1
FIX
}

printtitle() {
    cat <<"TITLE"
The system must use a reverse-path filter for IPv4 network traffic when possible on all interfaces.
TITLE
}

printseverity() {
    cat <<"SEVERITY"
medium
SEVERITY
}

printid() {
    cat <<"ID"
V-38542
ID
}

printdescription() {
    cat <<"DESCRIPTION"
Enabling reverse path filtering drops packets with source addresses that should not have been able to be received on the interface they were received on. It should not be used on systems which are routers for complicated networks, but is helpful for end hosts and routers serving small networks.
DESCRIPTION
}

