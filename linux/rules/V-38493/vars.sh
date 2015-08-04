#!/bin/sh
printfix() {
    cat <<"FIX"
Change the mode of the audit log directories with the following command: # chmod go-w [audit_directory]
FIX
}

printtitle() {
    cat <<"TITLE"
Audit log directories must have mode 0755 or less permissive.
TITLE
}

printdescription() {
    cat <<"DESCRIPTION"
If users can delete audit logs, audit trails can be modified or destroyed.
DESCRIPTION
}

printseverity() {
    cat <<"SEVERITY"
medium
SEVERITY
}

printid() {
    cat <<"ID"
V-38493
ID
}

