#!/bin/sh
printtitle() {
    cat <<"TITLE"
The tftp-server package must not be installed.
TITLE
}

printfix() {
    cat <<"FIX"
The "tftp-server" package can be removed with the following command: # yum erase tftp-server
FIX
}

printseverity() {
    cat <<"SEVERITY"
medium
SEVERITY
}

printdescription() {
    cat <<"DESCRIPTION"
Removing the "tftp-server" package decreases the risk of the accidental (or intentional) activation of tftp services.
DESCRIPTION
}

printid() {
    cat <<"ID"
V-38606
ID
}

