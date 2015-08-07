#!/bin/sh
printtitle() {
    cat <<"TITLE"
The FTPS/FTP service on the system must be configured with the Department of Defense (DoD) login banner.
TITLE
}

printfix() {
    cat <<"FIX"
Edit the vsftpd configuration file, which resides at "/etc/vsftpd/vsftpd.conf" by default. Add or correct the following configuration options. banner_file=/etc/issueRestart the vsftpd daemon.# service vsftpd restart
FIX
}

printseverity() {
    cat <<"SEVERITY"
medium
SEVERITY
}

printid() {
    cat <<"ID"
V-38599
ID
}

printdescription() {
    cat <<"DESCRIPTION"
This setting will cause the system greeting banner to be used for FTP connections as well.
DESCRIPTION
}

