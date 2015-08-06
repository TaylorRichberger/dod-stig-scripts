#!/bin/sh

if rpm -q --queryformat "%{SUMMARY}\n" gpg-pubkey >/dev/null 2>&1; then
exit 0
fi

rpm -q --queryformat "%{SUMMARY}\n" gpg-pubkey
exit 1
