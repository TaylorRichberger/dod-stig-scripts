#!/bin/sh
printfix() {
    cat <<"FIX"
At a minimum, the audit system should collect administrator actions for all users and root. Add the following to "/etc/audit/audit.rules": -w /etc/sudoers -p wa -k actions
FIX
}

printseverity() {
    cat <<"SEVERITY"
low
SEVERITY
}

printid() {
    cat <<"ID"
V-38578
ID
}

printtitle() {
    cat <<"TITLE"
The audit system must be configured to audit changes to the /etc/sudoers file.
TITLE
}

printdescription() {
    cat <<"DESCRIPTION"
The actions taken by system administrators should be audited to keep a record of what was executed on the system, as well as, for accountability purposes.
DESCRIPTION
}

