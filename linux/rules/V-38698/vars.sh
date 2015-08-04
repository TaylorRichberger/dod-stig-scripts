#!/bin/sh
printtitle() {
    cat <<"TITLE"
The operating system must employ automated mechanisms to detect the presence of unauthorized software on organizational information systems and notify designated organizational officials in accordance with the organization defined frequency.
TITLE
}

printid() {
    cat <<"ID"
V-38698
ID
}

printseverity() {
    cat <<"SEVERITY"
medium
SEVERITY
}

printfix() {
    cat <<"FIX"
AIDE should be executed on a periodic basis to check for changes. To implement a daily execution of AIDE at 4:05am using cron, add the following line to /etc/crontab: 05 4 * * * root /usr/sbin/aide --checkAIDE can be executed periodically through other means; this is merely one example.
FIX
}

printdescription() {
    cat <<"DESCRIPTION"
By default, AIDE does not install itself for periodic execution. Periodically running AIDE may reveal unexpected changes in installed files.
DESCRIPTION
}

