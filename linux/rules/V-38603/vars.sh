#!/bin/sh
printdescription() {
    cat <<"DESCRIPTION"
Removing the "ypserv" package decreases the risk of the accidental (or intentional) activation of NIS or NIS+ services.
DESCRIPTION
}

printid() {
    cat <<"ID"
V-38603
ID
}

printseverity() {
    cat <<"SEVERITY"
medium
SEVERITY
}

printfix() {
    cat <<"FIX"
The "ypserv" package can be uninstalled with the following command: # yum erase ypserv
FIX
}

printtitle() {
    cat <<"TITLE"
The ypserv package must not be installed.
TITLE
}

