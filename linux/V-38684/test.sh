#!/bin/sh

if ! grep -qE '^\*[[:space:]]*hard[[:space:]]*maxlogins[[:space:]]*10' /etc/security/limits.conf; then
    echo max logins should be managed
    exit 1
fi

exit 0
