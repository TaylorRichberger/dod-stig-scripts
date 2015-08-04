#!/bin/sh
printfix() {
    cat <<"FIX"
The "oddjobd" service exists to provide an interface and access control mechanism through which specified privileged tasks can run tasks for unprivileged client applications. Communication with "oddjobd" is through the system message bus. The "oddjobd" service can be disabled with the following commands: # chkconfig oddjobd off# service oddjobd stop
FIX
}

printseverity() {
    cat <<"SEVERITY"
low
SEVERITY
}

printdescription() {
    cat <<"DESCRIPTION"
The "oddjobd" service may provide necessary functionality in some environments but it can be disabled if it is not needed. Execution of tasks by privileged programs, on behalf of unprivileged ones, has traditionally been a source of privilege escalation security issues.
DESCRIPTION
}

printtitle() {
    cat <<"TITLE"
The oddjobd service must not be running.
TITLE
}

printid() {
    cat <<"ID"
V-38646
ID
}

