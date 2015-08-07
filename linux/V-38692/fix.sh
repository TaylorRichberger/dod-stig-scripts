#!/bin/sh

sed '/^INACTIVE=/d' /etc/default/useradd
echo 'INACTIVE=35' >>/etc/default/useradd
