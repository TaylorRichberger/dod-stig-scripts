#!/bin/sh

key=audit_account_changes

./lib/fix_audit_watch_file.sh /etc/group $key
./lib/fix_audit_watch_file.sh /etc/passwd $key
./lib/fix_audit_watch_file.sh /etc/gshadow $key
./lib/fix_audit_watch_file.sh /etc/shadow $key
./lib/fix_audit_watch_file.sh /etc/security/opasswd $key
