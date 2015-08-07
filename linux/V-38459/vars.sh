#!/bin/sh
printid() {
    cat <<"ID"
V-38459
ID
}

printtitle() {
    cat <<"TITLE"
The /etc/group file must be group-owned by root.
TITLE
}

printfix() {
    cat <<"FIX"
To properly set the group owner of "/etc/group", run the command: # chgrp root /etc/group
FIX
}

printseverity() {
    cat <<"SEVERITY"
medium
SEVERITY
}

printdescription() {
    cat <<"DESCRIPTION"
The "/etc/group" file contains information regarding groups that are configured on the system. Protection of this file is important for system security.
DESCRIPTION
}

