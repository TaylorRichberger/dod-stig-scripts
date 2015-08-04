#!/bin/sh
printdescription() {
    cat <<"DESCRIPTION"
The "/tmp" partition is used as temporary storage by many programs. Placing "/tmp" in its own partition enables the setting of more restrictive mount options, which can help protect programs which use it.
DESCRIPTION
}

printfix() {
    cat <<"FIX"
The "/tmp" directory is a world-writable directory used for temporary file storage. Ensure it has its own partition or logical volume at installation time, or migrate it using LVM.
FIX
}

printseverity() {
    cat <<"SEVERITY"
low
SEVERITY
}

printtitle() {
    cat <<"TITLE"
The system must use a separate file system for /tmp.
TITLE
}

printid() {
    cat <<"ID"
V-38455
ID
}

