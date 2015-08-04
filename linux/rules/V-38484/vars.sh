#!/bin/sh
printtitle() {
    cat <<"TITLE"
The operating system, upon successful logon, must display to the user the date and time of the last logon or access via ssh.
TITLE
}

printfix() {
    cat <<"FIX"
Update the "PrintLastLog" keyword to "yes" in /etc/ssh/sshd_config:PrintLastLog yesWhile it is acceptable to remove the keyword entirely since the default action for the SSH daemon is to print the last login date and time, it is preferred to have the value explicitly documented.
FIX
}

printid() {
    cat <<"ID"
V-38484
ID
}

printdescription() {
    cat <<"DESCRIPTION"
Users need to be aware of activity that occurs regarding their account. Providing users with information regarding the date and time of their last successful login allows the user to determine if any unauthorized activity has occurred and gives them an opportunity to notify administrators.At ssh login, a user must be presented with the last successful login date and time.
DESCRIPTION
}

printseverity() {
    cat <<"SEVERITY"
medium
SEVERITY
}

