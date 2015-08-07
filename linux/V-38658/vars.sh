#!/bin/sh
printtitle() {
    cat <<"TITLE"
The system must prohibit the reuse of passwords within twenty-four iterations.
TITLE
}

printseverity() {
    cat <<"SEVERITY"
medium
SEVERITY
}

printfix() {
    cat <<"FIX"
Do not allow users to reuse recent passwords. This can be accomplished by using the "remember" option for the "pam_unix" PAM module. In the file "/etc/pam.d/system-auth", append "remember=24" to the line which refers to the "pam_unix.so" module, as shown: password sufficient pam_unix.so [existing_options] remember=24The DoD requirement is 24 passwords.
FIX
}

printdescription() {
    cat <<"DESCRIPTION"
Preventing reuse of previous passwords helps ensure that a compromised password is not reused by a user.
DESCRIPTION
}

printid() {
    cat <<"ID"
V-38658
ID
}

