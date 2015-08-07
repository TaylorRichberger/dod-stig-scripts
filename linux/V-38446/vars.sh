#!/bin/sh
printid() {
    cat <<"ID"
V-38446
ID
}

printtitle() {
    cat <<"TITLE"
The mail system must forward all mail for root to one or more system administrators.
TITLE
}

printdescription() {
    cat <<"DESCRIPTION"
A number of system services utilize email messages sent to the root user to notify system administrators of active or impending issues.  These messages must be forwarded to at least one monitored email address.
DESCRIPTION
}

printseverity() {
    cat <<"SEVERITY"
medium
SEVERITY
}

printfix() {
    cat <<"FIX"
Set up an alias for root that forwards to a monitored email address:# echo "root: <system.administrator>@mail.mil" >> /etc/aliases# newaliases
FIX
}

