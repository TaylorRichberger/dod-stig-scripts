#!/bin/sh
printdescription() {
    cat <<"DESCRIPTION"
This prevents attackers with physical access from trivially bypassing security on the machine and gaining root access. Such accesses are further prevented by configuring the bootloader password.
DESCRIPTION
}

printseverity() {
    cat <<"SEVERITY"
medium
SEVERITY
}

printtitle() {
    cat <<"TITLE"
The system must require authentication upon booting into single-user and maintenance modes.
TITLE
}

printfix() {
    cat <<"FIX"
Single-user mode is intended as a system recovery method, providing a single user root access to the system by providing a boot option at startup. By default, no authentication is performed if single-user mode is selected. To require entry of the root password even if the system is started in single-user mode, add or correct the following line in the file "/etc/sysconfig/init": SINGLE=/sbin/sulogin
FIX
}

printid() {
    cat <<"ID"
V-38586
ID
}

