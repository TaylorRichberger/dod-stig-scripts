#!/bin/sh
printtitle() {
    cat <<"TITLE"
All GIDs referenced in /etc/passwd must be defined in /etc/group
TITLE
}

printdescription() {
    cat <<"DESCRIPTION"
Inconsistency in GIDs between /etc/passwd and /etc/group could lead to a user having unintended rights.
DESCRIPTION
}

printid() {
    cat <<"ID"
V-38681
ID
}

printseverity() {
    cat <<"SEVERITY"
low
SEVERITY
}

printfix() {
    cat <<"FIX"
Add a group to the system for each GID referenced without a corresponding group.
FIX
}

