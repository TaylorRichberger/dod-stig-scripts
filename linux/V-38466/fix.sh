#!/bin/sh

find -L /lib32 /lib64 /lib /usr/lib32 /usr/lib64 /usr/lib -type f \! -user root 2>/dev/null | xargs chown root
