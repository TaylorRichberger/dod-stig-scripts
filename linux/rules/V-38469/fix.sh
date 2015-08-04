#!/bin/sh

find -L /bin /usr/bin /usr/local/bin /sbin /usr/sbin /usr/local/sbin -type f -perm /022 2>/dev/null | xargs chmod go-w
