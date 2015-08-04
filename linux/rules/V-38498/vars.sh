#!/bin/sh
printdescription() {
    cat <<"DESCRIPTION"
If users can write to audit logs, audit trails can be modified or destroyed.
DESCRIPTION
}

printfix() {
    cat <<"FIX"
Change the mode of the audit log files with the following command: # chmod 0640 [audit_file]
FIX
}

printid() {
    cat <<"ID"
V-38498
ID
}

printseverity() {
    cat <<"SEVERITY"
medium
SEVERITY
}

printtitle() {
    cat <<"TITLE"
Audit log files must have mode 0640 or less permissive.
TITLE
}

