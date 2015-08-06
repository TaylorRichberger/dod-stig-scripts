#!/bin/sh
printtitle() {
    cat <<"TITLE"
The system must set a maximum audit log file size.
TITLE
}

printid() {
    cat <<"ID"
V-38633
ID
}

printseverity() {
    cat <<"SEVERITY"
medium
SEVERITY
}

printdescription() {
    cat <<"DESCRIPTION"
The total storage for audit log files must be large enough to retain log information over the period required. This is a function of the maximum log file size and the number of logs retained.
DESCRIPTION
}

printfix() {
    cat <<"FIX"
Determine the amount of audit data (in megabytes) which should be retained in each log file. Edit the file "/etc/audit/auditd.conf". Add or modify the following line, substituting the correct value for [STOREMB]: max_log_file = [STOREMB]Set the value to "6" (MB) or higher for general-purpose systems. Larger values, of course, support retention of even more audit data.
FIX
}

