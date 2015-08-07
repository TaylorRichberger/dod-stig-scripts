#!/bin/sh
printdescription() {
    cat <<"DESCRIPTION"
The system's mandatory access policy (SELinux) should not be arbitrarily changed by anything other than administrator action. All changes to MAC policy should be audited.
DESCRIPTION
}

printfix() {
    cat <<"FIX"
Add the following to "/etc/audit/audit.rules": -w /etc/selinux/ -p wa -k MAC-policy
FIX
}

printtitle() {
    cat <<"TITLE"
The audit system must be configured to audit modifications to the systems Mandatory Access Control (MAC) configuration (SELinux).
TITLE
}

printid() {
    cat <<"ID"
V-38541
ID
}

printseverity() {
    cat <<"SEVERITY"
low
SEVERITY
}

