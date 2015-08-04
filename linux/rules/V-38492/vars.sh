#!/bin/sh
printseverity() {
    cat <<"SEVERITY"
medium
SEVERITY
}

printdescription() {
    cat <<"DESCRIPTION"
Preventing direct root login to virtual console devices helps ensure accountability for actions taken on the system using the root account. 
DESCRIPTION
}

printfix() {
    cat <<"FIX"
To restrict root logins through the (deprecated) virtual console devices, ensure lines of this form do not appear in "/etc/securetty": vc/1vc/2vc/3vc/4Note:  Virtual console entries are not limited to those listed above.  Any lines starting with "vc/" followed by numerals should be removed.
FIX
}

printtitle() {
    cat <<"TITLE"
The system must prevent the root account from logging in from virtual consoles.
TITLE
}

printid() {
    cat <<"ID"
V-38492
ID
}

