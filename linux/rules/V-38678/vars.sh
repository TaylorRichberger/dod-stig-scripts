#!/bin/sh
printid() {
    cat <<"ID"
V-38678
ID
}

printfix() {
    cat <<"FIX"
The "auditd" service can be configured to take an action when disk space starts to run low. Edit the file "/etc/audit/auditd.conf". Modify the following line, substituting [num_megabytes] appropriately: space_left = [num_megabytes]The "num_megabytes" value should be set to a fraction of the total audit storage capacity available that will allow a system administrator to be notified with enough time to respond to the situation causing the capacity issues.  This value must also be documented locally.
FIX
}

printseverity() {
    cat <<"SEVERITY"
medium
SEVERITY
}

printtitle() {
    cat <<"TITLE"
The audit system must provide a warning when allocated audit record storage volume reaches a documented percentage of maximum audit record storage capacity.
TITLE
}

printdescription() {
    cat <<"DESCRIPTION"
Notifying administrators of an impending disk space problem may allow them to take corrective action prior to any disruption.
DESCRIPTION
}

