#!/bin/sh
printseverity() {
    cat <<"SEVERITY"
medium
SEVERITY
}

printfix() {
    cat <<"FIX"
To properly set the permissions of "/etc/group", run the command: # chmod 644 /etc/group
FIX
}

printid() {
    cat <<"ID"
V-38461
ID
}

printdescription() {
    cat <<"DESCRIPTION"
The "/etc/group" file contains information regarding groups that are configured on the system. Protection of this file is important for system security.
DESCRIPTION
}

printtitle() {
    cat <<"TITLE"
The /etc/group file must have mode 0644 or less permissive.
TITLE
}

