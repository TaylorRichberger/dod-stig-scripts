#!/bin/sh
printfix() {
    cat <<"FIX"
At a minimum, the audit system should collect media exportation events for all users and root. Add the following to "/etc/audit/audit.rules", setting ARCH to either b32 or b64 as appropriate for your system: -a always,exit -F arch=ARCH -S mount -F auid>=500 -F auid!=4294967295 -k export-a always,exit -F arch=ARCH -S mount -F auid=0 -k export
FIX
}

printtitle() {
    cat <<"TITLE"
The audit system must be configured to audit successful file system mounts.
TITLE
}

printid() {
    cat <<"ID"
V-38568
ID
}

printdescription() {
    cat <<"DESCRIPTION"
The unauthorized exportation of data to external media could result in an information leak where classified information, Privacy Act information, and intellectual property could be lost. An audit trail should be created each time a filesystem is mounted to help identify and guard against information loss.
DESCRIPTION
}

printseverity() {
    cat <<"SEVERITY"
low
SEVERITY
}

