#!/bin/sh
printtitle() {
    cat <<"TITLE"
The rlogind service must not be running.
TITLE
}

printdescription() {
    cat <<"DESCRIPTION"
The rlogin service uses unencrypted network communications, which means that data from the login session, including passwords and all other information transmitted during the session, can be stolen by eavesdroppers on the network.
DESCRIPTION
}

printfix() {
    cat <<"FIX"
The "rlogin" service, which is available with the "rsh-server" package and runs as a service through xinetd, should be disabled. The "rlogin" service can be disabled with the following command: # chkconfig rlogin off
FIX
}

printid() {
    cat <<"ID"
V-38602
ID
}

printseverity() {
    cat <<"SEVERITY"
high
SEVERITY
}

