#!/bin/sh
printdescription() {
    cat <<"DESCRIPTION"
Setting the minimum password age protects against users cycling back to a favorite password after satisfying the password reuse requirement.
DESCRIPTION
}

printtitle() {
    cat <<"TITLE"
Users must not be able to change passwords more than once every 24 hours.
TITLE
}

printid() {
    cat <<"ID"
V-38477
ID
}

printfix() {
    cat <<"FIX"
To specify password minimum age for new accounts, edit the file "/etc/login.defs" and add or correct the following line, replacing [DAYS] appropriately: PASS_MIN_DAYS [DAYS]A value of 1 day is considered sufficient for many environments. The DoD requirement is 1.
FIX
}

printseverity() {
    cat <<"SEVERITY"
medium
SEVERITY
}

