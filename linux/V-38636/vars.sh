#!/bin/sh
printid() {
    cat <<"ID"
V-38636
ID
}

printseverity() {
    cat <<"SEVERITY"
medium
SEVERITY
}

printtitle() {
    cat <<"TITLE"
The system must retain enough rotated audit logs to cover the required log retention period.
TITLE
}

printdescription() {
    cat <<"DESCRIPTION"
The total storage for audit log files must be large enough to retain log information over the period required. This is a function of the maximum log file size and the number of logs retained.
DESCRIPTION
}

printfix() {
    cat <<"FIX"
Determine how many log files "auditd" should retain when it rotates logs. Edit the file "/etc/audit/auditd.conf". Add or modify the following line, substituting [NUMLOGS] with the correct value: num_logs = [NUMLOGS]Set the value to 5 for general-purpose systems. Note that values less than 2 result in no log rotation.
FIX
}

