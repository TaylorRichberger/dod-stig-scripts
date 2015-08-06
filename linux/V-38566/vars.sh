#!/bin/sh
printid() {
    cat <<"ID"
V-38566
ID
}

printfix() {
    cat <<"FIX"
At a minimum, the audit system should collect unauthorized file accesses for all users and root. Add the following to "/etc/audit/audit.rules", setting ARCH to either b32 or b64 as appropriate for your system: -a always,exit -F arch=ARCH -S creat -S open -S openat -S truncate \-S ftruncate -F exit=-EACCES -F auid>=500 -F auid!=4294967295 -k access-a always,exit -F arch=ARCH -S creat -S open -S openat -S truncate \-S ftruncate -F exit=-EPERM -F auid>=500 -F auid!=4294967295 -k access-a always,exit -F arch=ARCH -S creat -S open -S openat -S truncate \-S ftruncate -F exit=-EACCES -F auid=0 -k access-a always,exit -F arch=ARCH -S creat -S open -S openat -S truncate \-S ftruncate -F exit=-EPERM -F auid=0 -k access
FIX
}

printdescription() {
    cat <<"DESCRIPTION"
Unsuccessful attempts to access files could be an indicator of malicious activity on a system. Auditing these events could serve as evidence of potential system compromise.
DESCRIPTION
}

printtitle() {
    cat <<"TITLE"
The audit system must be configured to audit failed attempts to access files and programs.
TITLE
}

printseverity() {
    cat <<"SEVERITY"
low
SEVERITY
}

