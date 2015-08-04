#!/bin/sh
printfix() {
    cat <<"FIX"
The "rsh-server" package can be uninstalled with the following command: # yum erase rsh-server
FIX
}

printdescription() {
    cat <<"DESCRIPTION"
The "rsh-server" package provides several obsolete and insecure network services. Removing it decreases the risk of those services' accidental (or intentional) activation.
DESCRIPTION
}

printtitle() {
    cat <<"TITLE"
The rsh-server package must not be installed.
TITLE
}

printseverity() {
    cat <<"SEVERITY"
high
SEVERITY
}

printid() {
    cat <<"ID"
V-38591
ID
}

