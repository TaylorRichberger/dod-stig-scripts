#!/bin/sh
printid() {
    cat <<"ID"
V-38671
ID
}

printseverity() {
    cat <<"SEVERITY"
medium
SEVERITY
}

printtitle() {
    cat <<"TITLE"
The sendmail package must be removed.
TITLE
}

printfix() {
    cat <<"FIX"
Sendmail is not the default mail transfer agent and is not installed by default. The "sendmail" package can be removed with the following command: # yum erase sendmail
FIX
}

printdescription() {
    cat <<"DESCRIPTION"
The sendmail software was not developed with security in mind and its design prevents it from being effectively contained by SELinux. Postfix should be used instead.
DESCRIPTION
}

