#!/bin/sh
printfix() {
    cat <<"FIX"
On a 32-bit system, add the following to "/etc/audit/audit.rules": # audit_time_rules-a always,exit -F arch=b32 -S settimeofday -k audit_time_rulesOn a 64-bit system, add the following to "/etc/audit/audit.rules": # audit_time_rules-a always,exit -F arch=b64 -S settimeofday -k audit_time_rulesThe -k option allows for the specification of a key in string form that can be used for better reporting capability through ausearch and aureport. Multiple system calls can be defined on the same line to save space if desired, but is not required. See an example of multiple combined syscalls: -a always,exit -F arch=b64 -S adjtimex -S settimeofday -S clock_settime -k audit_time_rules
FIX
}

printseverity() {
    cat <<"SEVERITY"
low
SEVERITY
}

printdescription() {
    cat <<"DESCRIPTION"
Arbitrary changes to the system time can be used to obfuscate nefarious activities in log files, as well as to confuse network services that are highly dependent upon an accurate system time (such as sshd). All changes to the system time should be audited.
DESCRIPTION
}

printtitle() {
    cat <<"TITLE"
The audit system must be configured to audit all attempts to alter system time through settimeofday.
TITLE
}

printid() {
    cat <<"ID"
V-38522
ID
}

