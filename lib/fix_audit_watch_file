#!/bin/bash

file="$1"
key="$2"

echo "-w $file -p wa -k $key" >> /etc/audit/audit.rules

auditctl -R /etc/audit/audit.rules
