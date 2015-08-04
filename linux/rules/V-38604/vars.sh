#!/bin/sh
printtitle() {
    cat <<"TITLE"
The ypbind service must not be running.
TITLE
}

printseverity() {
    cat <<"SEVERITY"
medium
SEVERITY
}

printdescription() {
    cat <<"DESCRIPTION"
Disabling the "ypbind" service ensures the system is not acting as a client in a NIS or NIS+ domain.
DESCRIPTION
}

printid() {
    cat <<"ID"
V-38604
ID
}

printfix() {
    cat <<"FIX"
The "ypbind" service, which allows the system to act as a client in a NIS or NIS+ domain, should be disabled. The "ypbind" service can be disabled with the following commands: # chkconfig ypbind off# service ypbind stop
FIX
}

