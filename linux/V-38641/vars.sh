#!/bin/sh
printtitle() {
    cat <<"TITLE"
The atd service must be disabled.
TITLE
}

printid() {
    cat <<"ID"
V-38641
ID
}

printfix() {
    cat <<"FIX"
The "at" and "batch" commands can be used to schedule tasks that are meant to be executed only once. This allows delayed execution in a manner similar to cron, except that it is not recurring. The daemon "atd" keeps track of tasks scheduled via "at" and "batch", and executes them at the specified time. The "atd" service can be disabled with the following commands: # chkconfig atd off# service atd stop
FIX
}

printdescription() {
    cat <<"DESCRIPTION"
The "atd" service could be used by an unsophisticated insider to carry out activities outside of a normal login session, which could complicate accountability. Furthermore, the need to schedule tasks with "at" or "batch" is not common.
DESCRIPTION
}

printseverity() {
    cat <<"SEVERITY"
low
SEVERITY
}

