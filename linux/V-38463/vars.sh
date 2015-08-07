#!/bin/sh
printseverity() {
    cat <<"SEVERITY"
low
SEVERITY
}

printfix() {
    cat <<"FIX"
System logs are stored in the "/var/log" directory. Ensure that it has its own partition or logical volume at installation time, or migrate it using LVM.
FIX
}

printtitle() {
    cat <<"TITLE"
The system must use a separate file system for /var/log.
TITLE
}

printdescription() {
    cat <<"DESCRIPTION"
Placing "/var/log" in its own partition enables better separation between log files and other files in "/var/".
DESCRIPTION
}

printid() {
    cat <<"ID"
V-38463
ID
}

