#!/bin/sh
printseverity() {
    cat <<"SEVERITY"
low
SEVERITY
}

printid() {
    cat <<"ID"
V-38683
ID
}

printdescription() {
    cat <<"DESCRIPTION"
Unique usernames allow for accountability on the system.
DESCRIPTION
}

printtitle() {
    cat <<"TITLE"
All accounts on the system must have unique user or account names
TITLE
}

printfix() {
    cat <<"FIX"
Change usernames, or delete accounts, so each has a unique name.
FIX
}

