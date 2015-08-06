#!/bin/sh
printtitle() {
    cat <<"TITLE"
Remote file systems must be mounted with the nosuid option.
TITLE
}

printdescription() {
    cat <<"DESCRIPTION"
NFS mounts should not present suid binaries to users. Only vendor-supplied suid executables should be installed to their default location on the local filesystem.
DESCRIPTION
}

printfix() {
    cat <<"FIX"
Add the "nosuid" option to the fourth column of "/etc/fstab" for the line which controls mounting of any NFS mounts.
FIX
}

printseverity() {
    cat <<"SEVERITY"
medium
SEVERITY
}

printid() {
    cat <<"ID"
V-38654
ID
}

