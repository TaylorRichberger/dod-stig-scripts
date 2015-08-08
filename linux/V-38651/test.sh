#!/bin/sh

if grep -F '^[[:space:]]*umask'  /etc/bashrc | grep -vqE '^[[:space:]]*umask[[:space:]]*077'; then
    echo 'umask is not 077'
    exit 1
fi

exit 0
