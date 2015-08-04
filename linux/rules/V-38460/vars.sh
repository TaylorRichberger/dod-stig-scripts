#!/bin/sh
printid() {
    cat <<"ID"
V-38460
ID
}

printfix() {
    cat <<"FIX"
Remove any instances of the "all_squash" option from the file "/etc/exports".  Restart the NFS daemon for the changes to take effect.# service nfs restart
FIX
}

printdescription() {
    cat <<"DESCRIPTION"
The "all_squash" option maps all client requests to a single anonymous uid/gid on the NFS server, negating the ability to track file access by user ID.
DESCRIPTION
}

printseverity() {
    cat <<"SEVERITY"
low
SEVERITY
}

printtitle() {
    cat <<"TITLE"
The NFS server must not have the all_squash option enabled.
TITLE
}

