#!/bin/sh

sed -i '/^[[:space:]]*SELINUXTYPE=/d' /etc/selinux/config
echo 'SELINUXTYPE=targeted' >>/etc/selinux/config
