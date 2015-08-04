#!/bin/sh
printseverity() {
    cat <<"SEVERITY"
medium
SEVERITY
}

printdescription() {
    cat <<"DESCRIPTION"
Enabling the "ntpd" service ensures that the "ntpd" service will be running and that the system will synchronize its time to any servers specified. This is important whether the system is configured to be a client (and synchronize only its own clock) or it is also acting as an NTP server to other systems. Synchronizing time is essential for authentication services such as Kerberos, but it is also important for maintaining accurate logs and auditing possible security breaches.
DESCRIPTION
}

printtitle() {
    cat <<"TITLE"
The system clock must be synchronized continuously, or at least daily.
TITLE
}

printid() {
    cat <<"ID"
V-38620
ID
}

printfix() {
    cat <<"FIX"
The "ntpd" service can be enabled with the following command: # chkconfig ntpd on# service ntpd start
FIX
}

