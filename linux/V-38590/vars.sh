#!/bin/sh
printdescription() {
    cat <<"DESCRIPTION"
Installing "screen" ensures a console locking capability is available for users who may need to suspend console logins.
DESCRIPTION
}

printid() {
    cat <<"ID"
V-38590
ID
}

printtitle() {
    cat <<"TITLE"
The system must allow locking of the console screen in text mode.
TITLE
}

printseverity() {
    cat <<"SEVERITY"
low
SEVERITY
}

printfix() {
    cat <<"FIX"
To enable console screen locking when in text mode, install the "screen" package: # yum install screenInstruct users to begin new terminal sessions with the following command: $ screenThe console can now be locked with the following key combination: ctrl+a x
FIX
}

