#!/bin/sh
printfix() {
    cat <<"FIX"
To properly set the owner of "/etc/group", run the command: # chown root /etc/group
FIX
}

printid() {
    cat <<"ID"
V-38458
ID
}

printdescription() {
    cat <<"DESCRIPTION"
The "/etc/group" file contains information regarding groups that are configured on the system. Protection of this file is important for system security.
DESCRIPTION
}

printseverity() {
    cat <<"SEVERITY"
medium
SEVERITY
}

printtitle() {
    cat <<"TITLE"
The /etc/group file must be owned by root.
TITLE
}

