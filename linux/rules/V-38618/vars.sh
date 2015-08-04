#!/bin/sh
printid() {
    cat <<"ID"
V-38618
ID
}

printdescription() {
    cat <<"DESCRIPTION"
Because the Avahi daemon service keeps an open network port, it is subject to network attacks. Its functionality is convenient but is only appropriate if the local network can be trusted.
DESCRIPTION
}

printtitle() {
    cat <<"TITLE"
The avahi service must be disabled.
TITLE
}

printfix() {
    cat <<"FIX"
The "avahi-daemon" service can be disabled with the following commands: # chkconfig avahi-daemon off# service avahi-daemon stop
FIX
}

printseverity() {
    cat <<"SEVERITY"
low
SEVERITY
}

