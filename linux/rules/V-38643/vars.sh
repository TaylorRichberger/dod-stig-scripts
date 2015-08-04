#!/bin/sh
printid() {
    cat <<"ID"
V-38643
ID
}

printtitle() {
    cat <<"TITLE"
There must be no world-writable files on the system. (This can be an issue in CUBS environments -- careful modification is required here relative to NFS and CIFS mounts)
TITLE
}

printfix() {
    cat <<"FIX"
It is generally a good idea to remove global (other) write access to a file when it is discovered. However, check with documentation for specific applications before making changes. Also, monitor for recurring world-writable files, as these may be symptoms of a misconfigured application or user account.
FIX
}

printdescription() {
    cat <<"DESCRIPTION"
Data in world-writable files can be modified by any user on the system. In almost all circumstances, files can be configured using a combination of user and group permissions to support whatever legitimate access is needed without the risk caused by world-writable files.
DESCRIPTION
}

printseverity() {
    cat <<"SEVERITY"
medium
SEVERITY
}

