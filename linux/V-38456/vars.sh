#!/bin/sh
printtitle() {
    cat <<"TITLE"
The system must use a separate file system for /var.
TITLE
}

printseverity() {
    cat <<"SEVERITY"
low
SEVERITY
}

printid() {
    cat <<"ID"
V-38456
ID
}

printdescription() {
    cat <<"DESCRIPTION"
Ensuring that "/var" is mounted on its own partition enables the setting of more restrictive mount options. This helps protect system services such as daemons or other programs which use it. It is not uncommon for the "/var" directory to contain world-writable directories, installed by other software packages.
DESCRIPTION
}

printfix() {
    cat <<"FIX"
The "/var" directory is used by daemons and other system services to store frequently-changing data. Ensure that "/var" has its own partition or logical volume at installation time, or migrate it using LVM.
FIX
}

