#!/bin/sh

sed -i '/^\*[[:space:]]*hard[[:space:]]*core[[:space:]]*/d' /etc/security/limits.conf
echo '* hard core 0' >> /etc/security/limits.conf
