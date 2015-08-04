#!/bin/sh
printfix() {
    cat <<"FIX"
To ensure the default umask controlled by "/etc/profile" is set properly, add or correct the "umask" setting in "/etc/profile" to read as follows: umask 077
FIX
}

printtitle() {
    cat <<"TITLE"
The system default umask in /etc/profile must be 077.
TITLE
}

printid() {
    cat <<"ID"
V-38647
ID
}

printseverity() {
    cat <<"SEVERITY"
low
SEVERITY
}

printdescription() {
    cat <<"DESCRIPTION"
The umask value influences the permissions assigned to files when they are created. A misconfigured umask value could result in files with excessive permissions that can be read and/or written to by unauthorized users.
DESCRIPTION
}

