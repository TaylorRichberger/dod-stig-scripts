#!/bin/sh
printdescription() {
    cat <<"DESCRIPTION"
The "/etc/shadow" file stores password hashes. Protection of this file is critical for system security.
DESCRIPTION
}

printtitle() {
    cat <<"TITLE"
The /etc/shadow file must be group-owned by root.
TITLE
}

printseverity() {
    cat <<"SEVERITY"
medium
SEVERITY
}

printid() {
    cat <<"ID"
V-38503
ID
}

printfix() {
    cat <<"FIX"
To properly set the group owner of "/etc/shadow", run the command: # chgrp root /etc/shadow
FIX
}

