#!/bin/sh

cat >>/etc/vsftpd/vsftpd.conf <<HERE
xferlog_enable=YES
xferlog_std_format=NO
log_ftp_protocol=YES
HERE
