#!/bin/sh
printid() {
    cat <<"ID"
V-38690
ID
}

printtitle() {
    cat <<"TITLE"
Emergency accounts must be provisioned with an expiration date.
TITLE
}

printdescription() {
    cat <<"DESCRIPTION"
When emergency accounts are created, there is a risk they may remain in place and active after the need for them no longer exists. Account expiration greatly reduces the risk of accounts being misused or hijacked.
DESCRIPTION
}

printseverity() {
    cat <<"SEVERITY"
low
SEVERITY
}

printfix() {
    cat <<"FIX"
In the event emergency accounts are required, configure the system to terminate them after a documented time period. For every emergency account, run the following command to set an expiration date on it, substituting "[USER]" and "[YYYY-MM-DD]" appropriately: # chage -E [YYYY-MM-DD] [USER]"[YYYY-MM-DD]" indicates the documented expiration date for the account.
FIX
}

