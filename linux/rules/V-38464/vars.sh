#!/bin/sh
printfix() {
    cat <<"FIX"
Edit the file "/etc/audit/auditd.conf". Modify the following line, substituting [ACTION] appropriately: disk_error_action = [ACTION]Possible values for [ACTION] are described in the "auditd.conf" man page. These include: "ignore""syslog""exec""suspend""single""halt"Set this to "syslog", "exec", "single", or "halt".
FIX
}

printdescription() {
    cat <<"DESCRIPTION"
Taking appropriate action in case of disk errors will minimize the possibility of losing audit records.
DESCRIPTION
}

printid() {
    cat <<"ID"
V-38464
ID
}

printtitle() {
    cat <<"TITLE"
The audit system must take appropriate action when there are disk errors on the audit storage volume.
TITLE
}

printseverity() {
    cat <<"SEVERITY"
medium
SEVERITY
}

