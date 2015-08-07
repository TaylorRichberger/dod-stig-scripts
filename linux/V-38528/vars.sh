#!/bin/sh
printfix() {
    cat <<"FIX"
To set the runtime status of the "net.ipv4.conf.all.log_martians" kernel parameter, run the following command: # sysctl -w net.ipv4.conf.all.log_martians=1If this is not the system's default value, add the following line to "/etc/sysctl.conf": net.ipv4.conf.all.log_martians = 1
FIX
}

printtitle() {
    cat <<"TITLE"
The system must log Martian packets.
TITLE
}

printdescription() {
    cat <<"DESCRIPTION"
The presence of "martian" packets (which have impossible addresses) as well as spoofed packets, source-routed packets, and redirects could be a sign of nefarious network activity. Logging these packets enables this activity to be detected.
DESCRIPTION
}

printseverity() {
    cat <<"SEVERITY"
low
SEVERITY
}

printid() {
    cat <<"ID"
V-38528
ID
}

