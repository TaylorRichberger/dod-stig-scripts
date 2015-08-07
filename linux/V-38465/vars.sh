#!/bin/sh
printseverity() {
    cat <<"SEVERITY"
medium
SEVERITY
}

printdescription() {
    cat <<"DESCRIPTION"
Files from shared library directories are loaded into the address space of processes (including privileged ones) or of the kernel itself at runtime. Restrictive permissions are necessary to protect the integrity of the system.
DESCRIPTION
}

printid() {
    cat <<"ID"
V-38465
ID
}

printfix() {
    cat <<"FIX"
System-wide shared library files, which are linked to executables during process load time or run time, are stored in the following directories by default: /lib/lib64/usr/lib/usr/lib64If any file in these directories is found to be group-writable or world-writable, correct its permission with the following command: # chmod go-w [FILE]
FIX
}

printtitle() {
    cat <<"TITLE"
Library files must have mode 0755 or less permissive.
TITLE
}

