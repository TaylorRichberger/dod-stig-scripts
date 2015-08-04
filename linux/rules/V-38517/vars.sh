#!/bin/sh
printtitle() {
    cat <<"TITLE"
The Transparent Inter-Process Communication (TIPC) protocol must be disabled unless required.
TITLE
}

printid() {
    cat <<"ID"
V-38517
ID
}

printdescription() {
    cat <<"DESCRIPTION"
Disabling TIPC protects the system against exploitation of any flaws in its implementation.
DESCRIPTION
}

printfix() {
    cat <<"FIX"
The Transparent Inter-Process Communication (TIPC) protocol is designed to provide communications between nodes in a cluster. To configure the system to prevent the "tipc" kernel module from being loaded, add the following line to a file in the directory "/etc/modprobe.d": install tipc /bin/false
FIX
}

printseverity() {
    cat <<"SEVERITY"
medium
SEVERITY
}

