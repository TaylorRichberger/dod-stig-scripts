#!/bin/sh
printid() {
    cat <<"ID"
V-38449
ID
}

printdescription() {
    cat <<"DESCRIPTION"
The /etc/gshadow file contains group password hashes. Protection of this file is critical for system security.
DESCRIPTION
}

printseverity() {
    cat <<"SEVERITY"
medium
SEVERITY
}

printtitle() {
    cat <<"TITLE"
The /etc/gshadow file must have mode 0000.
TITLE
}

printfix() {
    cat <<"FIX"
To properly set the permissions of "/etc/gshadow", run the command: # chmod 0000 /etc/gshadow
FIX
}

