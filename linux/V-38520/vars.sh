#!/bin/sh
printfix() {
    cat <<"FIX"
To configure rsyslog to send logs to a remote log server, open "/etc/rsyslog.conf" and read and understand the last section of the file, which describes the multiple directives necessary to activate remote logging. Along with these other directives, the system can be configured to forward its logs to a particular log server by adding or correcting one of the following lines, substituting "[loghost.example.com]" appropriately. The choice of protocol depends on the environment of the system; although TCP and RELP provide more reliable message delivery, they may not be supported in all environments. To use UDP for log message delivery: *.* @[loghost.example.com]To use TCP for log message delivery: *.* @@[loghost.example.com]To use RELP for log message delivery: *.* :omrelp:[loghost.example.com]
FIX
}

printseverity() {
    cat <<"SEVERITY"
medium
SEVERITY
}

printtitle() {
    cat <<"TITLE"
The operating system must back up audit records on an organization defined frequency onto a different system or media than the system being audited.  (Centralized audit logging with Qradar addresses this .. Ensure configuration of centralized logging)
TITLE
}

printdescription() {
    cat <<"DESCRIPTION"
A log server (loghost) receives syslog messages from one or more systems. This data can be used as an additional log source in the event a system is compromised and its local logs are suspect. Forwarding log messages to a remote loghost also provides system administrators with a centralized place to view the status of multiple hosts within the enterprise.
DESCRIPTION
}

printid() {
    cat <<"ID"
V-38520
ID
}

