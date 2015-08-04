#!/bin/sh
printdescription() {
    cat <<"DESCRIPTION"
Privileged programs are subject to escalation-of-privilege attacks, which attempt to subvert their normal role of providing some necessary but limited capability. As such, motivation exists to monitor these programs for unusual activity.
DESCRIPTION
}

printtitle() {
    cat <<"TITLE"
The audit system must be configured to audit all use of setuid programs.
TITLE
}

printseverity() {
    cat <<"SEVERITY"
low
SEVERITY
}

printfix() {
    cat <<"FIX"
At a minimum, the audit system should collect the execution of privileged commands for all users and root. To find the relevant setuid programs run the following command for each local partition [PART]: # find [PART] -xdev -type f \( -perm -4000 -o -perm -2000 \) 2>/dev/nullThen, for each setuid program on the system, add a line of the following form to "/etc/audit/audit.rules", where [SETUID_PROG_PATH] is the full path to each setuid program in the list: -a always,exit -F path=[SETUID_PROG_PATH] -F perm=x -F auid>=500 -F auid!=4294967295 -k privileged
FIX
}

printid() {
    cat <<"ID"
V-38567
ID
}

