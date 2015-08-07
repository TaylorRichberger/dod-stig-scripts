#!/bin/sh
printdescription() {
    cat <<"DESCRIPTION"
Unencrypted passwords for remote FTP servers may be stored in ".netrc" files. DoD policy requires passwords be encrypted in storage and not used in access scripts.
DESCRIPTION
}

printid() {
    cat <<"ID"
V-38619
ID
}

printseverity() {
    cat <<"SEVERITY"
medium
SEVERITY
}

printfix() {
    cat <<"FIX"
The ".netrc" files contain login information used to auto-login into FTP servers and reside in the user's home directory. These files may contain unencrypted passwords to remote FTP servers making them susceptible to access by unauthorized users and should not be used. Any ".netrc" files should be removed.
FIX
}

printtitle() {
    cat <<"TITLE"
There must be no .netrc files on the system.
TITLE
}

