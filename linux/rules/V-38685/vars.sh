#!/bin/sh
printfix() {
    cat <<"FIX"
In the event temporary accounts are required, configure the system to terminate them after a documented time period. For every temporary account, run the following command to set an expiration date on it, substituting "[USER]" and "[YYYY-MM-DD]" appropriately: # chage -E [YYYY-MM-DD] [USER]"[YYYY-MM-DD]" indicates the documented expiration date for the account.
FIX
}

printdescription() {
    cat <<"DESCRIPTION"
When temporary accounts are created, there is a risk they may remain in place and active after the need for them no longer exists. Account expiration greatly reduces the risk of accounts being misused or hijacked.
DESCRIPTION
}

printid() {
    cat <<"ID"
V-38685
ID
}

printtitle() {
    cat <<"TITLE"
Temporary accounts must be provisioned with an expiration date.
TITLE
}

printseverity() {
    cat <<"SEVERITY"
low
SEVERITY
}

