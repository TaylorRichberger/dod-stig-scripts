#!/bin/sh
printfix() {
    cat <<"FIX"
To set the runtime status of the "net.ipv4.icmp_echo_ignore_broadcasts" kernel parameter, run the following command: # sysctl -w net.ipv4.icmp_echo_ignore_broadcasts=1If this is not the system's default value, add the following line to "/etc/sysctl.conf": net.ipv4.icmp_echo_ignore_broadcasts = 1
FIX
}

printtitle() {
    cat <<"TITLE"
The system must not respond to ICMPv4 sent to a broadcast address.
TITLE
}

printid() {
    cat <<"ID"
V-38535
ID
}

printseverity() {
    cat <<"SEVERITY"
low
SEVERITY
}

printdescription() {
    cat <<"DESCRIPTION"
Ignoring ICMP echo requests (pings) sent to broadcast or multicast addresses makes the system slightly more difficult to enumerate on the network.
DESCRIPTION
}

