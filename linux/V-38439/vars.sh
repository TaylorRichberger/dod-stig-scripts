#!/bin/sh
printid() {
    cat <<"ID"
V-38439
ID
}

printtitle() {
    cat <<"TITLE"
The system must provide automated support for account management functions.
TITLE
}

printseverity() {
    cat <<"SEVERITY"
medium
SEVERITY
}

printdescription() {
    cat <<"DESCRIPTION"
A comprehensive account management process that includes automation helps to ensure the accounts designated as requiring attention are consistently and promptly addressed. Enterprise environments make user account management challenging and complex. A user management process requiring administrators to manually address account management functions adds risk of potential oversight.
DESCRIPTION
}

printfix() {
    cat <<"FIX"
Implement an automated system for managing user accounts that minimizes the risk of errors, either intentional or deliberate.  If possible, this system should integrate with an existing enterprise user management system, such as, one based Active Directory or Kerberos.
FIX
}

