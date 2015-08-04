#!/bin/sh
printfix() {
    cat <<"FIX"
AIDE should be executed on a periodic basis to check for changes. To implement a daily execution of AIDE at 4:05am using cron, add the following line to /etc/crontab: 05 4 * * * root /usr/sbin/aide --checkAIDE can be executed periodically through other means; this is merely one example.
FIX
}

printid() {
    cat <<"ID"
V-38695
ID
}

printtitle() {
    cat <<"TITLE"
A file integrity tool must be used at least weekly to check for unauthorized file changes, particularly the addition of unauthorized system libraries or binaries, or for unauthorized modification to authorized system libraries or binaries.
TITLE
}

printdescription() {
    cat <<"DESCRIPTION"
By default, AIDE does not install itself for periodic execution. Periodically running AIDE may reveal unexpected changes in installed files.
DESCRIPTION
}

printseverity() {
    cat <<"SEVERITY"
medium
SEVERITY
}

