#!/bin/sh
printid() {
    cat <<"ID"
V-38682
ID
}

printfix() {
    cat <<"FIX"
The kernel's module loading system can be configured to prevent loading of the Bluetooth module. Add the following to the appropriate "/etc/modprobe.d" configuration file to prevent the loading of the Bluetooth module: install net-pf-31 /bin/falseinstall bluetooth /bin/false
FIX
}

printdescription() {
    cat <<"DESCRIPTION"
If Bluetooth functionality must be disabled, preventing the kernel from loading the kernel module provides an additional safeguard against its activation.
DESCRIPTION
}

printtitle() {
    cat <<"TITLE"
The Bluetooth kernel module must be disabled.
TITLE
}

printseverity() {
    cat <<"SEVERITY"
medium
SEVERITY
}

