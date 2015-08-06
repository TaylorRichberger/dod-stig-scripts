#!/bin/sh
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

printtitle() {
    cat <<"TITLE"
The system default umask for the csh shell must be 077.
TITLE
}

printid() {
    cat <<"ID"
V-38649
ID
}

printfix() {
    cat <<"FIX"
To ensure the default umask for users of the C shell is set properly, add or correct the "umask" setting in "/etc/csh.cshrc" to read as follows: umask 077
FIX
}

