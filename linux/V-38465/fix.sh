#!/bin/sh

find -L /lib32 /lib64 /lib /usr/lib32 /usr/lib64 /usr/lib -type f -perm /022 2>/dev/null | xargs chmod go-w
