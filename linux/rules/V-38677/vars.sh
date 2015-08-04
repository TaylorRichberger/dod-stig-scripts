#!/bin/sh
printid() {
    cat <<"ID"
V-38677
ID
}

printseverity() {
    cat <<"SEVERITY"
high
SEVERITY
}

printdescription() {
    cat <<"DESCRIPTION"
Allowing insecure file locking could allow for sensitive data to be viewed or edited by an unauthorized user.
DESCRIPTION
}

printtitle() {
    cat <<"TITLE"
The NFS server must not have the insecure file locking option enabled.
TITLE
}

printfix() {
    cat <<"FIX"
By default the NFS server requires secure file-lock requests, which require credentials from the client in order to lock a file. Most NFS clients send credentials with file lock requests, however, there are a few clients that do not send credentials when requesting a file-lock, allowing the client to only be able to lock world-readable files. To get around this, the "insecure_locks" option can be used so these clients can access the desired export. This poses a security risk by potentially allowing the client access to data for which it does not have authorization. Remove any instances of the "insecure_locks" option from the file "/etc/exports".
FIX
}

