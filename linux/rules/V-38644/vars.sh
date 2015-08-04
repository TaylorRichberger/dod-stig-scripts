#!/bin/sh
printseverity() {
    cat <<"SEVERITY"
low
SEVERITY
}

printfix() {
    cat <<"FIX"
The ntpdate service sets the local hardware clock by polling NTP servers when the system boots. It synchronizes to the NTP servers listed in "/etc/ntp/step-tickers" or "/etc/ntp.conf" and then sets the local hardware clock to the newly synchronized system time. The "ntpdate" service can be disabled with the following commands: # chkconfig ntpdate off# service ntpdate stop
FIX
}

printtitle() {
    cat <<"TITLE"
The ntpdate service must not be running.
TITLE
}

printdescription() {
    cat <<"DESCRIPTION"
The "ntpdate" service may only be suitable for systems which are rebooted frequently enough that clock drift does not cause problems between reboots. In any event, the functionality of the ntpdate service is now available in the ntpd program and should be considered deprecated.
DESCRIPTION
}

printid() {
    cat <<"ID"
V-38644
ID
}

