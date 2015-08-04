#!/bin/sh
printtitle() {
    cat <<"TITLE"
Remote file systems must be mounted with the nodev option.
TITLE
}

printid() {
    cat <<"ID"
V-38652
ID
}

printseverity() {
    cat <<"SEVERITY"
medium
SEVERITY
}

printdescription() {
    cat <<"DESCRIPTION"
Legitimate device files should only exist in the /dev directory. NFS mounts should not present device files to users.
DESCRIPTION
}

printfix() {
    cat <<"FIX"
Add the "nodev" option to the fourth column of "/etc/fstab" for the line which controls mounting of any NFS mounts.
FIX
}

