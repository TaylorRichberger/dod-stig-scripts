#!/bin/sh
printid() {
    cat <<"ID"
V-38468
ID
}

printfix() {
    cat <<"FIX"
The "auditd" service can be configured to take an action when disk space starts to run low. Edit the file "/etc/audit/auditd.conf". Modify the following line, substituting [ACTION] appropriately: disk_full_action = [ACTION]Possible values for [ACTION] are described in the "auditd.conf" man page. These include: "ignore""syslog""exec""suspend""single""halt"Set this to "syslog", "exec", "single", or "halt".
FIX
}

printtitle() {
    cat <<"TITLE"
The audit system must take appropriate action when the audit storage volume is full.
TITLE
}

printdescription() {
    cat <<"DESCRIPTION"
Taking appropriate action in case of a filled audit storage volume will minimize the possibility of losing audit records.
DESCRIPTION
}

printseverity() {
    cat <<"SEVERITY"
medium
SEVERITY
}

