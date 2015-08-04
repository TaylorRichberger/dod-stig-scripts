#!/bin/sh
printseverity() {
    cat <<"SEVERITY"
low
SEVERITY
}

printtitle() {
    cat <<"TITLE"
All public directories must be owned by a system account.
TITLE
}

printid() {
    cat <<"ID"
V-38699
ID
}

printdescription() {
    cat <<"DESCRIPTION"
Allowing a user account to own a world-writable directory is undesirable because it allows the owner of that directory to remove or replace any files that may be placed in the directory by other users.
DESCRIPTION
}

printfix() {
    cat <<"FIX"
All directories in local partitions which are world-writable should be owned by root or another system account. If any world-writable directories are not owned by a system account, this should be investigated. Following this, the files should be deleted or assigned to an appropriate group.
FIX
}

