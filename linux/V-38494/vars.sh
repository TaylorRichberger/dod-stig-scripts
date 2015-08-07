#!/bin/sh
printdescription() {
    cat <<"DESCRIPTION"
Preventing direct root login to serial port interfaces helps ensure accountability for actions taken on the systems using the root account.
DESCRIPTION
}

printfix() {
    cat <<"FIX"
To restrict root logins on serial ports, ensure lines of this form do not appear in "/etc/securetty": ttyS0ttyS1Note:  Serial port entries are not limited to those listed above.  Any lines starting with "ttyS" followed by numerals should be removed
FIX
}

printid() {
    cat <<"ID"
V-38494
ID
}

printtitle() {
    cat <<"TITLE"
The system must prevent the root account from logging in from serial consoles.
TITLE
}

printseverity() {
    cat <<"SEVERITY"
low
SEVERITY
}

