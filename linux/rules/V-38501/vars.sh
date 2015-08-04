#!/bin/sh
printdescription() {
    cat <<"DESCRIPTION"
Locking out user accounts after a number of incorrect attempts within a specific period of time prevents direct password guessing attacks.
DESCRIPTION
}

printseverity() {
    cat <<"SEVERITY"
medium
SEVERITY
}

printid() {
    cat <<"ID"
V-38501
ID
}

printfix() {
    cat <<"FIX"
To configure the system to lock out accounts after a number of incorrect login attempts within a 15-minute interval using "pam_faillock.so": Add the following lines immediately below the "pam_unix.so" statement in the AUTH section of"/etc/pam.d/system-auth-ac": auth [default=die] pam_faillock.so authfail deny=3 unlock_time=604800 fail_interval=900auth required pam_faillock.so authsucc deny=3 unlock_time=604800 fail_interval=900Note that any updates made to "/etc/pam.d/system-auth-ac" will be overwritten by the "authconfig" program.  The "authconfig" program should not be used.
FIX
}

printtitle() {
    cat <<"TITLE"
The system must disable accounts after excessive login failures within a 15-minute interval.
TITLE
}

