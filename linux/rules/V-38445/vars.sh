#!/bin/sh
printfix() {
    cat <<"FIX"
Change the group owner of the audit log files with the following command: # chgrp root [audit_file]
FIX
}

printid() {
    cat <<"ID"
V-38445
ID
}

printtitle() {
    cat <<"TITLE"
Audit log files must be group-owned by root.
TITLE
}

printdescription() {
    cat <<"DESCRIPTION"
If non-privileged users can write to audit logs, audit trails can be modified or destroyed.
DESCRIPTION
}

printseverity() {
    cat <<"SEVERITY"
medium
SEVERITY
}

