#!/bin/sh
printdescription() {
    cat <<"DESCRIPTION"
Locking out user accounts after a number of incorrect attempts prevents direct password guessing attacks. Ensuring that an administrator is involved in unlocking locked accounts draws appropriate attention to such situations.
DESCRIPTION
}

printseverity() {
    cat <<"SEVERITY"
medium
SEVERITY
}

printid() {
    cat <<"ID"
V-38592
ID
}

printtitle() {
    cat <<"TITLE"
The system must require administrator action to unlock an account locked by excessive failed login attempts.
TITLE
}

printfix() {
    cat <<"FIX"
To configure the system to lock out accounts after a number of incorrect login attempts and require an administrator to unlock the account using "pam_faillock.so": Add the following lines immediately below the "pam_unix.so" statement in the AUTH section of"/etc/pam.d/system-auth-ac" and "/etc/pam.d/password-auth-ac": auth [default=die] pam_faillock.so authfail deny=3 unlock_time=604800 fail_interval=900auth required pam_faillock.so authsucc deny=3 unlock_time=604800  fail_interval=900Note that any updates made to "/etc/pam.d/system-auth-ac" and "/etc/pam.d/password-auth-ac" will be overwritten by the "authconfig" program.  The "authconfig" program should not be used.
FIX
}

