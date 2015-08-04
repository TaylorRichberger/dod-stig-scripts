#!/bin/sh
printfix() {
    cat <<"FIX"
The "rsh" service, which is available with the "rsh-server" package and runs as a service through xinetd, should be disabled. The "rsh" service can be disabled with the following command: # chkconfig rsh off
FIX
}

printtitle() {
    cat <<"TITLE"
The rshd service must not be running.
TITLE
}

printseverity() {
    cat <<"SEVERITY"
high
SEVERITY
}

printdescription() {
    cat <<"DESCRIPTION"
The rsh service uses unencrypted network communications, which means that data from the login session, including passwords and all other information transmitted during the session, can be stolen by eavesdroppers on the network.
DESCRIPTION
}

printid() {
    cat <<"ID"
V-38594
ID
}

