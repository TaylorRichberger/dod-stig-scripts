#!/bin/sh
printseverity() {
    cat <<"SEVERITY"
medium
SEVERITY
}

printdescription() {
    cat <<"DESCRIPTION"
Disabling DCCP protects the system against exploitation of any flaws in its implementation.
DESCRIPTION
}

printfix() {
    cat <<"FIX"
The Datagram Congestion Control Protocol (DCCP) is a relatively new transport layer protocol, designed to support streaming media and telephony. To configure the system to prevent the "dccp" kernel module from being loaded, add the following line to a file in the directory "/etc/modprobe.d": install dccp /bin/false
FIX
}

printtitle() {
    cat <<"TITLE"
The Datagram Congestion Control Protocol (DCCP) must be disabled unless required.
TITLE
}

printid() {
    cat <<"ID"
V-38514
ID
}

