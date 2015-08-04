#!/bin/sh
printtitle() {
    cat <<"TITLE"
The system must forward audit records to the syslog service.
TITLE
}

printfix() {
    cat <<"FIX"
Set the "active" line in "/etc/audisp/plugins.d/syslog.conf" to "yes".  Restart the auditd process.# service auditd restart
FIX
}

printdescription() {
    cat <<"DESCRIPTION"
The auditd service does not include the ability to send audit records to a centralized server for management directly.  It does, however, include an audit event multiplexor plugin (audispd) to pass audit records to the local syslog server.
DESCRIPTION
}

printseverity() {
    cat <<"SEVERITY"
low
SEVERITY
}

printid() {
    cat <<"ID"
V-38471
ID
}

