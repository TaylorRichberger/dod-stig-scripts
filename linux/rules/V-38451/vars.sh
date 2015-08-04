#!/bin/sh
printseverity() {
    cat <<"SEVERITY"
medium
SEVERITY
}

printid() {
    cat <<"ID"
V-38451
ID
}

printdescription() {
    cat <<"DESCRIPTION"
The "/etc/passwd" file contains information about the users that are configured on the system. Protection of this file is critical for system security.
DESCRIPTION
}

printtitle() {
    cat <<"TITLE"
The /etc/passwd file must be group-owned by root.
TITLE
}

printfix() {
    cat <<"FIX"
To properly set the group owner of "/etc/passwd", run the command: # chgrp root /etc/passwd
FIX
}

