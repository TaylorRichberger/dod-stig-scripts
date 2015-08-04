#!/bin/sh
printtitle() {
    cat <<"TITLE"
The operating system must automatically audit account modification.
TITLE
}

printdescription() {
    cat <<"DESCRIPTION"
In addition to auditing new user and group accounts, these watches will alert the system administrator(s) to any modifications. Any unexpected users, groups, or modifications should be investigated for legitimacy.
DESCRIPTION
}

printfix() {
    cat <<"FIX"
Add the following to "/etc/audit/audit.rules", in order to capture events that modify account changes: # audit_account_changes-w /etc/group -p wa -k audit_account_changes-w /etc/passwd -p wa -k audit_account_changes-w /etc/gshadow -p wa -k audit_account_changes-w /etc/shadow -p wa -k audit_account_changes-w /etc/security/opasswd -p wa -k audit_account_changes
FIX
}

printid() {
    cat <<"ID"
V-38534
ID
}

printseverity() {
    cat <<"SEVERITY"
low
SEVERITY
}

