#!/bin/sh

sed -i '/^[[:space:]]*SELINUX=/d' /etc/selinux/config
echo 'SELINUX=enforcing' >>/etc/selinux/config
