#!/bin/sh
printfix() {
    cat <<"FIX"
To specify how many days prior to password expiration that a warning will be issued to users, edit the file "/etc/login.defs" and add or correct the following line, replacing [DAYS] appropriately: PASS_WARN_AGE [DAYS]The DoD requirement is 7.
FIX
}

printseverity() {
    cat <<"SEVERITY"
low
SEVERITY
}

printid() {
    cat <<"ID"
V-38480
ID
}

printtitle() {
    cat <<"TITLE"
Users must be warned 7 days in advance of password expiration.
TITLE
}

printdescription() {
    cat <<"DESCRIPTION"
Setting the password warning age enables users to make the change at a practical time.
DESCRIPTION
}

