#!/bin/sh
printid() {
    cat <<"ID"
V-38495
ID
}

printseverity() {
    cat <<"SEVERITY"
medium
SEVERITY
}

printfix() {
    cat <<"FIX"
Change the owner of the audit log files with the following command: # chown root [audit_file]
FIX
}

printtitle() {
    cat <<"TITLE"
Audit log files must be owned by root.
TITLE
}

printdescription() {
    cat <<"DESCRIPTION"
If non-privileged users can write to audit logs, audit trails can be modified or destroyed.
DESCRIPTION
}

