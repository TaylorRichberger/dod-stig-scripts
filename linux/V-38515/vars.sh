#!/bin/sh
printfix() {
    cat <<"FIX"
The Stream Control Transmission Protocol (SCTP) is a transport layer protocol, designed to support the idea of message-oriented communication, with several streams of messages within one connection. To configure the system to prevent the "sctp" kernel module from being loaded, add the following line to a file in the directory "/etc/modprobe.d": install sctp /bin/false
FIX
}

printtitle() {
    cat <<"TITLE"
The Stream Control Transmission Protocol (SCTP) must be disabled unless required.
TITLE
}

printdescription() {
    cat <<"DESCRIPTION"
Disabling SCTP protects the system against exploitation of any flaws in its implementation.
DESCRIPTION
}

printid() {
    cat <<"ID"
V-38515
ID
}

printseverity() {
    cat <<"SEVERITY"
medium
SEVERITY
}

