#!/bin/sh
printid() {
    cat <<"ID"
V-38466
ID
}

printtitle() {
    cat <<"TITLE"
Library files must be owned by root.
TITLE
}

printseverity() {
    cat <<"SEVERITY"
medium
SEVERITY
}

printdescription() {
    cat <<"DESCRIPTION"
Files from shared library directories are loaded into the address space of processes (including privileged ones) or of the kernel itself at runtime. Proper ownership is necessary to protect the integrity of the system.
DESCRIPTION
}

printfix() {
    cat <<"FIX"
System-wide shared library files, which are linked to executables during process load time or run time, are stored in the following directories by default: /lib/lib64/usr/lib/usr/lib64If any file in these directories is found to be owned by a user other than root, correct its ownership with the following command: # chown root [FILE]
FIX
}

