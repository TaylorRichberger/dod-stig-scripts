#!/bin/sh
printseverity() {
    cat <<"SEVERITY"
medium
SEVERITY
}

printtitle() {
    cat <<"TITLE"
The system clock must be synchronized to an authoritative DoD time source.
TITLE
}

printid() {
    cat <<"ID"
V-38621
ID
}

printdescription() {
    cat <<"DESCRIPTION"
Synchronizing with an NTP server makes it possible to collate system logs from multiple sources or correlate computer events with real time events. Using a trusted NTP server provided by your organization is recommended.
DESCRIPTION
}

printfix() {
    cat <<"FIX"
To specify a remote NTP server for time synchronization, edit the file "/etc/ntp.conf". Add or correct the following lines, substituting the IP or hostname of a remote NTP server for ntpserver. server [ntpserver]This instructs the NTP software to contact that remote server to obtain time data.
FIX
}

