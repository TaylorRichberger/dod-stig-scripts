#!/bin/sh

if test_audit_watch_syscall init_module && test_audit_watch_syscall delete_module; then
    exit 0
fi

exit 1
