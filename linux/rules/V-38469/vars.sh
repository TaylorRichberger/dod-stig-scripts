#!/bin/sh
printseverity() {
    cat <<"SEVERITY"
medium
SEVERITY
}

printdescription() {
    cat <<"DESCRIPTION"
System binaries are executed by privileged users, as well as system services, and restrictive permissions are necessary to ensure execution of these programs cannot be co-opted.
DESCRIPTION
}

printtitle() {
    cat <<"TITLE"
All system command files must have mode 0755 or less permissive.
TITLE
}

printfix() {
    cat <<"FIX"
System executables are stored in the following directories by default: /bin/usr/bin/usr/local/bin/sbin/usr/sbin/usr/local/sbinIf any file in these directories is found to be group-writable or world-writable, correct its permission with the following command: # chmod go-w [FILE]
FIX
}

printid() {
    cat <<"ID"
V-38469
ID
}

