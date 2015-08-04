#!/bin/sh
printdescription() {
    cat <<"DESCRIPTION"
Removing the "xinetd" package decreases the risk of the xinetd service's accidental (or intentional) activation.
DESCRIPTION
}

printid() {
    cat <<"ID"
V-38584
ID
}

printtitle() {
    cat <<"TITLE"
The xinetd service must be uninstalled if no network services utilizing it are enabled.
TITLE
}

printseverity() {
    cat <<"SEVERITY"
low
SEVERITY
}

printfix() {
    cat <<"FIX"
The "xinetd" package can be uninstalled with the following command: # yum erase xinetd
FIX
}

