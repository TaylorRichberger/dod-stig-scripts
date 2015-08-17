#!/bin/sh

find / -xdev -type d -perm -002 \! -perm -1000 -exec chmod +t '{}' \;
