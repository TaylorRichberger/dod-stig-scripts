#!/bin/sh
printtitle() {
    cat <<"TITLE"
IP forwarding for IPv4 must not be enabled, unless the system is a router.
TITLE
}

printdescription() {
    cat <<"DESCRIPTION"
IP forwarding permits the kernel to forward packets from one network interface to another. The ability to forward packets between two networks is only appropriate for routers.
DESCRIPTION
}

printid() {
    cat <<"ID"
V-38511
ID
}

printfix() {
    cat <<"FIX"
To set the runtime status of the "net.ipv4.ip_forward" kernel parameter, run the following command: # sysctl -w net.ipv4.ip_forward=0If this is not the system's default value, add the following line to "/etc/sysctl.conf": net.ipv4.ip_forward = 0
FIX
}

printseverity() {
    cat <<"SEVERITY"
medium
SEVERITY
}

