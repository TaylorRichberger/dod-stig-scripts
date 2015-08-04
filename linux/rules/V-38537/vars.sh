#!/bin/sh
printfix() {
    cat <<"FIX"
To set the runtime status of the "net.ipv4.icmp_ignore_bogus_error_responses" kernel parameter, run the following command: # sysctl -w net.ipv4.icmp_ignore_bogus_error_responses=1If this is not the system's default value, add the following line to "/etc/sysctl.conf": net.ipv4.icmp_ignore_bogus_error_responses = 1
FIX
}

printid() {
    cat <<"ID"
V-38537
ID
}

printdescription() {
    cat <<"DESCRIPTION"
Ignoring bogus ICMP error responses reduces log size, although some activity would not be logged.
DESCRIPTION
}

printseverity() {
    cat <<"SEVERITY"
low
SEVERITY
}

printtitle() {
    cat <<"TITLE"
The system must ignore ICMPv4 bogus error responses.
TITLE
}

