#!/bin/sh
printdescription() {
    cat <<"DESCRIPTION"
Setting the SELinux state to enforcing ensures SELinux is able to confine potentially compromised processes to the security policy, which is designed to prevent them from causing damage to the system or further elevating their privileges. 
DESCRIPTION
}

printtitle() {
    cat <<"TITLE"
The system must use a Linux Security Module configured to enforce limits on system services. (PCI Compliance does not require this .. IRS1075 does)
TITLE
}

printfix() {
    cat <<"FIX"
The SELinux state should be set to "enforcing" at system boot time. In the file "/etc/selinux/config", add or correct the following line to configure the system to boot into enforcing mode:SELINUX=enforcing
FIX
}

printid() {
    cat <<"ID"
V-51363
ID
}

printseverity() {
    cat <<"SEVERITY"
medium
SEVERITY
}

