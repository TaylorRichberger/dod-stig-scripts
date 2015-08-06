#!/bin/sh

key=audit_account_changes

fix_audit_watch_file.sh /etc/group $key
fix_audit_watch_file.sh /etc/passwd $key
fix_audit_watch_file.sh /etc/gshadow $key
fix_audit_watch_file.sh /etc/shadow $key
fix_audit_watch_file.sh /etc/security/opasswd $key
