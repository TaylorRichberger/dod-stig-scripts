#!/bin/sh
printfix() {
    cat <<"FIX"
SELinux can be disabled at boot time by an argument in "/etc/grub.conf". Remove any instances of "selinux=0" from the kernel arguments in that file to prevent SELinux from being disabled at boot. 
FIX
}

printseverity() {
    cat <<"SEVERITY"
medium
SEVERITY
}

printtitle() {
    cat <<"TITLE"
The system must use a Linux Security Module at boot time.
TITLE
}

printdescription() {
    cat <<"DESCRIPTION"
Disabling a major host protection feature, such as SELinux, at boot time prevents it from confining system services at boot time. Further, it increases the chances that it will remain off during system operation.
DESCRIPTION
}

printid() {
    cat <<"ID"
V-51337
ID
}

