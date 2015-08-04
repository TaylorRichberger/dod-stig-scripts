#!/bin/sh
printdescription() {
    cat <<"DESCRIPTION"
The rexec service uses unencrypted network communications, which means that data from the login session, including passwords and all other information transmitted during the session, can be stolen by eavesdroppers on the network.
DESCRIPTION
}

printtitle() {
    cat <<"TITLE"
The rexecd service must not be running.
TITLE
}

printseverity() {
    cat <<"SEVERITY"
high
SEVERITY
}

printid() {
    cat <<"ID"
V-38598
ID
}

printfix() {
    cat <<"FIX"
The "rexec" service, which is available with the "rsh-server" package and runs as a service through xinetd, should be disabled. The "rexec" service can be disabled with the following command: # chkconfig rexec off
FIX
}

