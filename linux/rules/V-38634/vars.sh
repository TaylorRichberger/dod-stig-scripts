#!/bin/sh
printdescription() {
    cat <<"DESCRIPTION"
Automatically rotating logs (by setting this to "rotate") minimizes the chances of the system unexpectedly running out of disk space by being overwhelmed with log data. However, for systems that must never discard log data, or which use external processes to transfer it and reclaim space, "keep_logs" can be employed.
DESCRIPTION
}

printtitle() {
    cat <<"TITLE"
The system must rotate audit log files that reach the maximum file size.
TITLE
}

printfix() {
    cat <<"FIX"
The default action to take when the logs reach their maximum size is to rotate the log files, discarding the oldest one. To configure the action taken by "auditd", add or correct the line in "/etc/audit/auditd.conf": max_log_file_action = [ACTION]Possible values for [ACTION] are described in the "auditd.conf" man page. These include: "ignore""syslog""suspend""rotate""keep_logs"Set the "[ACTION]" to "rotate" to ensure log rotation occurs. This is the default. The setting is case-insensitive.
FIX
}

printid() {
    cat <<"ID"
V-38634
ID
}

printseverity() {
    cat <<"SEVERITY"
medium
SEVERITY
}

