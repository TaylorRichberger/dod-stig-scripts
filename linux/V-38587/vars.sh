#!/bin/sh
printseverity() {
    cat <<"SEVERITY"
high
SEVERITY
}

printdescription() {
    cat <<"DESCRIPTION"
Removing the "telnet-server" package decreases the risk of the unencrypted telnet service's accidental (or intentional) activation.Mitigation:  If the telnet-server package is configured to only allow encrypted sessions, such as with Kerberos or the use of encrypted network tunnels, the risk of exposing sensitive information is mitigated.
DESCRIPTION
}

printid() {
    cat <<"ID"
V-38587
ID
}

printtitle() {
    cat <<"TITLE"
The telnet-server package must not be installed.
TITLE
}

printfix() {
    cat <<"FIX"
The "telnet-server" package can be uninstalled with the following command: # yum erase telnet-server
FIX
}

