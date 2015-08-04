#!/bin/sh
printdescription() {
    cat <<"DESCRIPTION"
Log files that are not properly rotated run the risk of growing so large that they fill up the /var/log partition. Valuable logging information could be lost if the /var/log partition becomes full.
DESCRIPTION
}

printfix() {
    cat <<"FIX"
The "logrotate" service should be installed or reinstalled if it is not installed and operating properly, by running the following command:# yum reinstall logrotate
FIX
}

printtitle() {
    cat <<"TITLE"
System logs must be rotated daily.
TITLE
}

printseverity() {
    cat <<"SEVERITY"
low
SEVERITY
}

printid() {
    cat <<"ID"
V-38624
ID
}

