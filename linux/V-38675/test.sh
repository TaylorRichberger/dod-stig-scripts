#!/bin/sh

if ! grep -qE '^\*[[:space:]]*hard[[:space:]]*core[[:space:]]*0' /etc/security/limits.conf; then
    echo Core dumps should be disabled
    exit 1
fi

exit 0
