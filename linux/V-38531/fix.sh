#!/bin/sh

key=audit_account_changes

fix_audit_watch_file /etc/group $key
fix_audit_watch_file /etc/passwd $key
fix_audit_watch_file /etc/gshadow $key
fix_audit_watch_file /etc/shadow $key
fix_audit_watch_file /etc/security/opasswd $key
