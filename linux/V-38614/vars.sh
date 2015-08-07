#!/bin/sh
printid() {
    cat <<"ID"
V-38614
ID
}

printseverity() {
    cat <<"SEVERITY"
high
SEVERITY
}

printdescription() {
    cat <<"DESCRIPTION"
Configuring this setting for the SSH daemon provides additional assurance that remote login via SSH will require a password, even in the event of misconfiguration elsewhere.
DESCRIPTION
}

printtitle() {
    cat <<"TITLE"
The SSH daemon must not allow authentication using an empty password.
TITLE
}

printfix() {
    cat <<"FIX"
To explicitly disallow remote login from accounts with empty passwords, add or correct the following line in "/etc/ssh/sshd_config": PermitEmptyPasswords noAny accounts with empty passwords should be disabled immediately, and PAM configuration should prevent users from being able to assign themselves empty passwords.
FIX
}

