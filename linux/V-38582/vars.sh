#!/bin/sh
printid() {
    cat <<"ID"
V-38582
ID
}

printtitle() {
    cat <<"TITLE"
The xinetd service must be disabled if no network services utilizing it are enabled.
TITLE
}

printseverity() {
    cat <<"SEVERITY"
medium
SEVERITY
}

printdescription() {
    cat <<"DESCRIPTION"
The xinetd service provides a dedicated listener service for some programs, which is no longer necessary for commonly-used network services. Disabling it ensures that these uncommon services are not running, and also prevents attacks against xinetd itself.
DESCRIPTION
}

printfix() {
    cat <<"FIX"
The "xinetd" service can be disabled with the following commands: # chkconfig xinetd off# service xinetd stop
FIX
}

