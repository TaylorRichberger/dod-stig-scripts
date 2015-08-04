#!/bin/sh
printfix() {
    cat <<"FIX"
To disable the ability for users to perform interactive startups, edit the file "/etc/sysconfig/init". Add or correct the line: PROMPT=noThe "PROMPT" option allows the console user to perform an interactive system startup, in which it is possible to select the set of services which are started on boot.
FIX
}

printid() {
    cat <<"ID"
V-38588
ID
}

printdescription() {
    cat <<"DESCRIPTION"
Using interactive boot, the console user could disable auditing, firewalls, or other services, weakening system security.
DESCRIPTION
}

printtitle() {
    cat <<"TITLE"
The system must not permit interactive boot.
TITLE
}

printseverity() {
    cat <<"SEVERITY"
medium
SEVERITY
}

