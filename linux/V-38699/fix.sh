#!/bin/sh

find / -type d -perm -0002 -uid +499 -print -exec chown root '{}' \;
