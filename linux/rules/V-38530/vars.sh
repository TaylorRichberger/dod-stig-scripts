#!/bin/sh
printdescription() {
    cat <<"DESCRIPTION"
Arbitrary changes to the system time can be used to obfuscate nefarious activities in log files, as well as to confuse network services that are highly dependent upon an accurate system time (such as sshd). All changes to the system time should be audited.
DESCRIPTION
}

printseverity() {
    cat <<"SEVERITY"
low
SEVERITY
}

printid() {
    cat <<"ID"
V-38530
ID
}

printfix() {
    cat <<"FIX"
Add the following to "/etc/audit/audit.rules": -w /etc/localtime -p wa -k audit_time_rulesThe -k option allows for the specification of a key in string form that can be used for better reporting capability through ausearch and aureport and should always be used.
FIX
}

printtitle() {
    cat <<"TITLE"
The audit system must be configured to audit all attempts to alter system time through /etc/localtime.
TITLE
}

