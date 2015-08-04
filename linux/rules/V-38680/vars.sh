#!/bin/sh
printseverity() {
    cat <<"SEVERITY"
medium
SEVERITY
}

printfix() {
    cat <<"FIX"
The "auditd" service can be configured to send email to a designated account in certain situations. Add or correct the following line in "/etc/audit/auditd.conf" to ensure that administrators are notified via email for those situations: action_mail_acct = root
FIX
}

printdescription() {
    cat <<"DESCRIPTION"
Email sent to the root account is typically aliased to the administrators of the system, who can take appropriate action.
DESCRIPTION
}

printtitle() {
    cat <<"TITLE"
The audit system must identify staff members to receive notifications of audit log storage volume capacity issues.
TITLE
}

printid() {
    cat <<"ID"
V-38680
ID
}

