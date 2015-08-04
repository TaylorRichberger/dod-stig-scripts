#!/bin/sh
printdescription() {
    cat <<"DESCRIPTION"
USB storage devices such as thumb drives can be used to introduce unauthorized software and other vulnerabilities. Support for these devices should be disabled and the devices themselves should be tightly controlled.
DESCRIPTION
}

printseverity() {
    cat <<"SEVERITY"
medium
SEVERITY
}

printfix() {
    cat <<"FIX"
To prevent USB storage devices from being used, configure the kernel module loading system to prevent automatic loading of the USB storage driver. To configure the system to prevent the "usb-storage" kernel module from being loaded, add the following line to a file in the directory "/etc/modprobe.d": install usb-storage /bin/falseThis will prevent the "modprobe" program from loading the "usb-storage" module, but will not prevent an administrator (or another program) from using the "insmod" program to load the module manually.
FIX
}

printid() {
    cat <<"ID"
V-38490
ID
}

printtitle() {
    cat <<"TITLE"
The operating system must enforce requirements for the connection of mobile devices to operating systems.
TITLE
}

