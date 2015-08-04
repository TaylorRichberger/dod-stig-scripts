#!/bin/sh
printtitle() {
    cat <<"TITLE"
The audit system must alert designated staff members when the audit storage volume approaches capacity.
TITLE
}

printid() {
    cat <<"ID"
V-38470
ID
}

printfix() {
    cat <<"FIX"
The "auditd" service can be configured to take an action when disk space starts to run low. Edit the file "/etc/audit/auditd.conf". Modify the following line, substituting [ACTION] appropriately: space_left_action = [ACTION]Possible values for [ACTION] are described in the "auditd.conf" man page. These include: "ignore""syslog""email""exec""suspend""single""halt"Set this to "email" (instead of the default, which is "suspend") as it is more likely to get prompt attention.RHEL-06-000521 ensures that the email generated through the operation "space_left_action" will be sent to an administrator.
FIX
}

printseverity() {
    cat <<"SEVERITY"
medium
SEVERITY
}

printdescription() {
    cat <<"DESCRIPTION"
Notifying administrators of an impending disk space problem may allow them to take corrective action prior to any disruption.
DESCRIPTION
}

