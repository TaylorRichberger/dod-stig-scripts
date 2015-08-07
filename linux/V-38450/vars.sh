#!/bin/sh
printfix() {
    cat <<"FIX"
To properly set the owner of "/etc/passwd", run the command: # chown root /etc/passwd
FIX
}

printdescription() {
    cat <<"DESCRIPTION"
The "/etc/passwd" file contains information about the users that are configured on the system. Protection of this file is critical for system security.
DESCRIPTION
}

printseverity() {
    cat <<"SEVERITY"
medium
SEVERITY
}

printtitle() {
    cat <<"TITLE"
The /etc/passwd file must be owned by root.
TITLE
}

printid() {
    cat <<"ID"
V-38450
ID
}

