#!/bin/sh

find / -type f -perm -002 -exec chmod o-w '{}' \;
