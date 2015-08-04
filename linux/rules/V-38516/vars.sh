#!/bin/sh
printtitle() {
    cat <<"TITLE"
The Reliable Datagram Sockets (RDS) protocol must be disabled unless required.
TITLE
}

printdescription() {
    cat <<"DESCRIPTION"
Disabling RDS protects the system against exploitation of any flaws in its implementation.
DESCRIPTION
}

printid() {
    cat <<"ID"
V-38516
ID
}

printfix() {
    cat <<"FIX"
The Reliable Datagram Sockets (RDS) protocol is a transport layer protocol designed to provide reliable high- bandwidth, low-latency communications between nodes in a cluster. To configure the system to prevent the "rds" kernel module from being loaded, add the following line to a file in the directory "/etc/modprobe.d": install rds /bin/false
FIX
}

printseverity() {
    cat <<"SEVERITY"
low
SEVERITY
}

