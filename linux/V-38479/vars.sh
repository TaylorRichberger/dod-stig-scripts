#!/bin/sh
printtitle() {
    cat <<"TITLE"
User passwords must be changed at least every 60 days.
TITLE
}

printfix() {
    cat <<"FIX"
To specify password maximum age for new accounts, edit the file "/etc/login.defs" and add or correct the following line, replacing [DAYS] appropriately: PASS_MAX_DAYS [DAYS]The DoD requirement is 60.
FIX
}

printid() {
    cat <<"ID"
V-38479
ID
}

printdescription() {
    cat <<"DESCRIPTION"
Setting the password maximum age ensures users are required to periodically change their passwords. This could possibly decrease the utility of a stolen password. Requiring shorter password lifetimes increases the risk of users writing down the password in a convenient location subject to physical compromise.
DESCRIPTION
}

printseverity() {
    cat <<"SEVERITY"
medium
SEVERITY
}

