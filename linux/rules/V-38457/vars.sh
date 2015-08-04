#!/bin/sh
printtitle() {
    cat <<"TITLE"
The /etc/passwd file must have mode 0644 or less permissive.
TITLE
}

printfix() {
    cat <<"FIX"
To properly set the permissions of "/etc/passwd", run the command: # chmod 0644 /etc/passwd
FIX
}

printdescription() {
    cat <<"DESCRIPTION"
If the "/etc/passwd" file is writable by a group-owner or the world the risk of its compromise is increased. The file contains the list of accounts on the system and associated information, and protection of this file is critical for system security.
DESCRIPTION
}

printseverity() {
    cat <<"SEVERITY"
medium
SEVERITY
}

printid() {
    cat <<"ID"
V-38457
ID
}

