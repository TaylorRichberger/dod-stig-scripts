#!/bin/sh
printid() {
    cat <<"ID"
V-38589
ID
}

printfix() {
    cat <<"FIX"
The "telnet" service can be disabled with the following command: # chkconfig telnet off
FIX
}

printseverity() {
    cat <<"SEVERITY"
high
SEVERITY
}

printdescription() {
    cat <<"DESCRIPTION"
The telnet protocol uses unencrypted network communication, which means that data from the login session, including passwords and all other information transmitted during the session, can be stolen by eavesdroppers on the network. The telnet protocol is also subject to man-in-the-middle attacks.Mitigation:  If an enabled telnet daemon is configured to only allow encrypted sessions, such as with Kerberos or the use of encrypted network tunnels, the risk of exposing sensitive information is mitigated.
DESCRIPTION
}

printtitle() {
    cat <<"TITLE"
The telnet daemon must not be running.
TITLE
}

