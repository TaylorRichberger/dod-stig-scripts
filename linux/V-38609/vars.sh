#!/bin/sh
printtitle() {
    cat <<"TITLE"
The TFTP service must not be running.
TITLE
}

printfix() {
    cat <<"FIX"
The "tftp" service should be disabled. The "tftp" service can be disabled with the following command: # chkconfig tftp off
FIX
}

printseverity() {
    cat <<"SEVERITY"
medium
SEVERITY
}

printdescription() {
    cat <<"DESCRIPTION"
Disabling the "tftp" service ensures the system is not acting as a tftp server, which does not provide encryption or authentication.
DESCRIPTION
}

printid() {
    cat <<"ID"
V-38609
ID
}

