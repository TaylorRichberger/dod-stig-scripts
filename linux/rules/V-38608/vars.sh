#!/bin/sh
printfix() {
    cat <<"FIX"
SSH allows administrators to set an idle timeout interval. After this interval has passed, the idle user will be automatically logged out. To set an idle timeout interval, edit the following line in "/etc/ssh/sshd_config" as follows: ClientAliveInterval [interval]The timeout [interval] is given in seconds. To have a timeout of 15 minutes, set [interval] to 900. If a shorter timeout has already been set for the login shell, that value will preempt any SSH setting made here. Keep in mind that some processes may stop SSH from correctly detecting that the user is idle.
FIX
}

printdescription() {
    cat <<"DESCRIPTION"
Causing idle users to be automatically logged out guards against compromises one system leading trivially to compromises on another.
DESCRIPTION
}

printtitle() {
    cat <<"TITLE"
The SSH daemon must set a timeout interval on idle sessions.
TITLE
}

printseverity() {
    cat <<"SEVERITY"
low
SEVERITY
}

printid() {
    cat <<"ID"
V-38608
ID
}

