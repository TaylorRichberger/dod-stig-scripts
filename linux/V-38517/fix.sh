#!/bin/sh

mkdir -p /etc/modprobe.d

echo 'install tipc /bin/false' >> /etc/modprobe.d/tipc.conf
