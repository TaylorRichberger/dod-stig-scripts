#!/bin/sh
printtitle() {
    cat <<"TITLE"
All rsyslog-generated log files must have mode 0600 or less permissive.
TITLE
}

printid() {
    cat <<"ID"
V-38623
ID
}

printdescription() {
    cat <<"DESCRIPTION"
Log files can contain valuable information regarding system configuration. If the system log files are not protected, unauthorized users could change the logged data, eliminating their forensic value.
DESCRIPTION
}

printseverity() {
    cat <<"SEVERITY"
medium
SEVERITY
}

printfix() {
    cat <<"FIX"
The file permissions for all log files written by rsyslog should be set to 600, or more restrictive. These log files are determined by the second part of each Rule line in "/etc/rsyslog.conf" and typically all appear in "/var/log". For each log file [LOGFILE] referenced in "/etc/rsyslog.conf", run the following command to inspect the file's permissions:$ ls -l [LOGFILE]If the permissions are not 600 or more restrictive, run the following command to correct this:# chmod 0600 [LOGFILE]
FIX
}

