#!/bin/sh

if [ -e /etc/vsftpd/vsftpd.conf ] && ! grep -qF xferlog_enable /etc/vsftpd/vsftpd.conf; then
    echo 'ftp transfer logging should be enabled'
    exit 1
fi

exit 0
