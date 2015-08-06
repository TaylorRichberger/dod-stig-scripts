#!/bin/sh

mkdir -p /etc/modprobe.d

echo 'install rds /bin/false' >> /etc/modprobe.d/rds.conf
