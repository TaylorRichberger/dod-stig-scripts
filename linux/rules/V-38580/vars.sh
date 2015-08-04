#!/bin/sh
printid() {
    cat <<"ID"
V-38580
ID
}

printfix() {
    cat <<"FIX"
Add the following to "/etc/audit/audit.rules" in order to capture kernel module loading and unloading events, setting ARCH to either b32 or b64 as appropriate for your system: -w /sbin/insmod -p x -k modules-w /sbin/rmmod -p x -k modules-w /sbin/modprobe -p x -k modules-a always,exit -F arch=[ARCH] -S init_module -S delete_module -k modules
FIX
}

printseverity() {
    cat <<"SEVERITY"
medium
SEVERITY
}

printdescription() {
    cat <<"DESCRIPTION"
The addition/removal of kernel modules can be used to alter the behavior of the kernel and potentially introduce malicious code into kernel space. It is important to have an audit trail of modules that have been introduced into the kernel.
DESCRIPTION
}

printtitle() {
    cat <<"TITLE"
The audit system must be configured to audit the loading and unloading of dynamic kernel modules.
TITLE
}

