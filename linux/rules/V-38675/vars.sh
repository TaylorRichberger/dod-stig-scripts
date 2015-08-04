#!/bin/sh
printdescription() {
    cat <<"DESCRIPTION"
A core dump includes a memory image taken at the time the operating system terminates an application. The memory image could contain sensitive data and is generally useful only for developers trying to debug problems.
DESCRIPTION
}

printseverity() {
    cat <<"SEVERITY"
low
SEVERITY
}

printtitle() {
    cat <<"TITLE"
Process core dumps must be disabled unless needed.
TITLE
}

printid() {
    cat <<"ID"
V-38675
ID
}

printfix() {
    cat <<"FIX"
To disable core dumps for all users, add the following line to "/etc/security/limits.conf": * hard core 0
FIX
}

