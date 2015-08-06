#!/bin/sh
printfix() {
    cat <<"FIX"
System executables are stored in the following directories by default: /bin/usr/bin/usr/local/bin/sbin/usr/sbin/usr/local/sbinIf any file [FILE] in these directories is found to be owned by a user other than root, correct its ownership with the following command: # chown root [FILE]
FIX
}

printid() {
    cat <<"ID"
V-38472
ID
}

printseverity() {
    cat <<"SEVERITY"
medium
SEVERITY
}

printtitle() {
    cat <<"TITLE"
All system command files must be owned by root.
TITLE
}

printdescription() {
    cat <<"DESCRIPTION"
System binaries are executed by privileged users as well as system services, and restrictive permissions are necessary to ensure that their execution of these programs cannot be co-opted.
DESCRIPTION
}

