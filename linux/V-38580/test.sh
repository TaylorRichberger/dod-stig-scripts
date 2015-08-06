#!/bin/sh

if ./lib/test_audit_watch_syscall.sh init_module && ./lib/test_audit_watch_syscall.sh delete_module; then
    exit 0
fi

exit 1
