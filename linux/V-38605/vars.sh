#!/bin/sh
printfix() {
    cat <<"FIX"
The "crond" service is used to execute commands at preconfigured times. It is required by almost all systems to perform necessary maintenance tasks, such as notifying root of system activity. The "crond" service can be enabled with the following commands: # chkconfig crond on# service crond start
FIX
}

printdescription() {
    cat <<"DESCRIPTION"
Due to its usage for maintenance and security-supporting tasks, enabling the cron daemon is essential.
DESCRIPTION
}

printid() {
    cat <<"ID"
V-38605
ID
}

printseverity() {
    cat <<"SEVERITY"
medium
SEVERITY
}

printtitle() {
    cat <<"TITLE"
The cron service must be running.
TITLE
}

