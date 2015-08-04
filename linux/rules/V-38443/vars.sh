#!/bin/sh
printid() {
    cat <<"ID"
V-38443
ID
}

printtitle() {
    cat <<"TITLE"
The /etc/gshadow file must be owned by root.
TITLE
}

printfix() {
    cat <<"FIX"
To properly set the owner of "/etc/gshadow", run the command: # chown root /etc/gshadow
FIX
}

printdescription() {
    cat <<"DESCRIPTION"
The "/etc/gshadow" file contains group password hashes. Protection of this file is critical for system security.
DESCRIPTION
}

printseverity() {
    cat <<"SEVERITY"
medium
SEVERITY
}

