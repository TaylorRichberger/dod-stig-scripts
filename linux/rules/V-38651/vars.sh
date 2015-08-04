#!/bin/sh
printseverity() {
    cat <<"SEVERITY"
low
SEVERITY
}

printtitle() {
    cat <<"TITLE"
The system default umask for the bash shell must be 077.
TITLE
}

printid() {
    cat <<"ID"
V-38651
ID
}

printdescription() {
    cat <<"DESCRIPTION"
The umask value influences the permissions assigned to files when they are created. A misconfigured umask value could result in files with excessive permissions that can be read and/or written to by unauthorized users.
DESCRIPTION
}

printfix() {
    cat <<"FIX"
To ensure the default umask for users of the Bash shell is set properly, add or correct the "umask" setting in "/etc/bashrc" to read as follows: umask 077
FIX
}

