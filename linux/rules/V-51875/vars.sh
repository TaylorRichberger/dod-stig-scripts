#!/bin/sh
printdescription() {
    cat <<"DESCRIPTION"
Users need to be aware of activity that occurs regarding their account. Providing users with information regarding the number of unsuccessful attempts that were made to login to their account allows the user to determine if any unauthorized activity has occurred and gives them an opportunity to notify administrators. 
DESCRIPTION
}

printfix() {
    cat <<"FIX"
To configure the system to notify users of last logon/access using "pam_lastlog", add the following line immediately after "session required pam_limits.so":session required pam_lastlog.so showfailed
FIX
}

printid() {
    cat <<"ID"
V-51875
ID
}

printseverity() {
    cat <<"SEVERITY"
medium
SEVERITY
}

printtitle() {
    cat <<"TITLE"
The operating system, upon successful logon/access, must display to the user the number of unsuccessful logon/access attempts since the last successful logon/access.
TITLE
}

