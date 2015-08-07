#!/bin/sh
printfix() {
    cat <<"FIX"
To ensure the default umask controlled by "/etc/login.defs" is set properly, add or correct the "umask" setting in "/etc/login.defs" to read as follows: UMASK 077
FIX
}

printseverity() {
    cat <<"SEVERITY"
low
SEVERITY
}

printid() {
    cat <<"ID"
V-38645
ID
}

printtitle() {
    cat <<"TITLE"
The system default umask in /etc/login.defs must be 077.
TITLE
}

printdescription() {
    cat <<"DESCRIPTION"
The umask value influences the permissions assigned to files when they are created. A misconfigured umask value could result in files with excessive permissions that can be read and/or written to by unauthorized users.
DESCRIPTION
}

