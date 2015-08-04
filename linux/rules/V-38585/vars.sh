#!/bin/sh
printdescription() {
    cat <<"DESCRIPTION"
Password protection on the boot loader configuration ensures users with physical access cannot trivially alter important bootloader settings. These include which kernel to use, and whether to enter single-user mode.
DESCRIPTION
}

printfix() {
    cat <<"FIX"
The grub boot loader should have password protection enabled to protect boot-time settings. To do so, select a password and then generate a hash from it by running the following command: # grub-crypt --sha-512When prompted to enter a password, insert the following line into "/etc/grub.conf" immediately after the header comments. (Use the output from "grub-crypt" as the value of [password-hash]): password --encrypted [password-hash]
FIX
}

printtitle() {
    cat <<"TITLE"
The system boot loader must require authentication.
TITLE
}

printseverity() {
    cat <<"SEVERITY"
medium
SEVERITY
}

printid() {
    cat <<"ID"
V-38585
ID
}

