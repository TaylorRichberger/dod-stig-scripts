#!/bin/sh
printid() {
    cat <<"ID"
V-38702
ID
}

printtitle() {
    cat <<"TITLE"
The FTP daemon must be configured for logging or verbose mode.
TITLE
}

printfix() {
    cat <<"FIX"
Add or correct the following configuration options within the "vsftpd" configuration file, located at "/etc/vsftpd/vsftpd.conf". xferlog_enable=YESxferlog_std_format=NOlog_ftp_protocol=YES
FIX
}

printdescription() {
    cat <<"DESCRIPTION"
To trace malicious activity facilitated by the FTP service, it must be configured to ensure that all commands sent to the ftp server are logged using the verbose vsftpd log format. The default vsftpd log file is /var/log/vsftpd.log.
DESCRIPTION
}

printseverity() {
    cat <<"SEVERITY"
low
SEVERITY
}

