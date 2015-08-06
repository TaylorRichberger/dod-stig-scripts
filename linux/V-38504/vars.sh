#!/bin/sh
printid() {
    cat <<"ID"
V-38504
ID
}

printfix() {
    cat <<"FIX"
To properly set the permissions of "/etc/shadow", run the command: # chmod 0000 /etc/shadow
FIX
}

printtitle() {
    cat <<"TITLE"
The /etc/shadow file must have mode 0000.
TITLE
}

printdescription() {
    cat <<"DESCRIPTION"
The "/etc/shadow" file contains the list of local system accounts and stores password hashes. Protection of this file is critical for system security. Failure to give ownership of this file to root provides the designated owner with access to sensitive information which could weaken the system security posture.
DESCRIPTION
}

printseverity() {
    cat <<"SEVERITY"
medium
SEVERITY
}

