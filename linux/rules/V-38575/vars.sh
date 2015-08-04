#!/bin/sh
printseverity() {
    cat <<"SEVERITY"
low
SEVERITY
}

printfix() {
    cat <<"FIX"
At a minimum, the audit system should collect file deletion events for all users and root. Add the following to "/etc/audit/audit.rules", setting ARCH to either b32 or b64 as appropriate for your system: -a always,exit -F arch=ARCH -S unlink -S unlinkat -S rename -S renameat \-F auid>=500 -F auid!=4294967295 -k delete-a always,exit -F arch=ARCH -S unlink -S unlinkat -S rename -S renameat \-F auid=0 -k delete
FIX
}

printid() {
    cat <<"ID"
V-38575
ID
}

printtitle() {
    cat <<"TITLE"
The audit system must be configured to audit user deletions of files and programs.
TITLE
}

printdescription() {
    cat <<"DESCRIPTION"
Auditing file deletions will create an audit trail for files that are removed from the system. The audit trail could aid in system troubleshooting, as well as detecting malicious processes that attempt to delete log files to conceal their presence.
DESCRIPTION
}

