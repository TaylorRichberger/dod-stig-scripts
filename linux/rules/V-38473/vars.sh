#!/bin/sh
printfix() {
    cat <<"FIX"
If user home directories will be stored locally, create a separate partition for "/home" at installation time (or migrate it later using LVM). If "/home" will be mounted from another system such as an NFS server, then creating a separate partition is not necessary at installation time, and the mountpoint can instead be configured later.
FIX
}

printtitle() {
    cat <<"TITLE"
The system must use a separate file system for user home directories.
TITLE
}

printseverity() {
    cat <<"SEVERITY"
low
SEVERITY
}

printdescription() {
    cat <<"DESCRIPTION"
Ensuring that "/home" is mounted on its own partition enables the setting of more restrictive mount options, and also helps ensure that users cannot trivially fill partitions used for log or audit data storage.
DESCRIPTION
}

printid() {
    cat <<"ID"
V-38473
ID
}

