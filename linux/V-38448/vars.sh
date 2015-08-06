#!/bin/sh
printtitle() {
    cat <<"TITLE"
The /etc/gshadow file must be group-owned by root.
TITLE
}

printfix() {
    cat <<"FIX"
To properly set the group owner of "/etc/gshadow", run the command: # chgrp root /etc/gshadow
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

printid() {
    cat <<"ID"
V-38448
ID
}

