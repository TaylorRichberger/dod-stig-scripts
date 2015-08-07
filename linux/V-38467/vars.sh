#!/bin/sh
printdescription() {
    cat <<"DESCRIPTION"
Placing "/var/log/audit" in its own partition enables better separation between audit files and other files, and helps ensure that auditing cannot be halted due to the partition running out of space.
DESCRIPTION
}

printfix() {
    cat <<"FIX"
Audit logs are stored in the "/var/log/audit" directory. Ensure that it has its own partition or logical volume at installation time, or migrate it later using LVM. Make absolutely certain that it is large enough to store all audit logs that will be created by the auditing daemon.
FIX
}

printtitle() {
    cat <<"TITLE"
The system must use a separate file system for the system audit data path.
TITLE
}

printseverity() {
    cat <<"SEVERITY"
low
SEVERITY
}

printid() {
    cat <<"ID"
V-38467
ID
}

