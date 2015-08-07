#!/bin/sh
printdescription() {
    cat <<"DESCRIPTION"
The "/etc/shadow" file contains the list of local system accounts and stores password hashes. Protection of this file is critical for system security. Failure to give ownership of this file to root provides the designated owner with access to sensitive information which could weaken the system security posture.
DESCRIPTION
}

printtitle() {
    cat <<"TITLE"
The /etc/shadow file must be owned by root.
TITLE
}

printfix() {
    cat <<"FIX"
To properly set the owner of "/etc/shadow", run the command: # chown root /etc/shadow
FIX
}

printid() {
    cat <<"ID"
V-38502
ID
}

printseverity() {
    cat <<"SEVERITY"
medium
SEVERITY
}

