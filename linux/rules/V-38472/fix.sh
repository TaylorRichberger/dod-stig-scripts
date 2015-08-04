#!/bin/sh

find -L /bin /usr/bin /usr/local/bin /sbin /usr/sbin /usr/local/sbin -type f \! -user root 2>/dev/null | xargs chown root
