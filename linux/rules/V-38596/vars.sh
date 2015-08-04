#!/bin/sh
printid() {
    cat <<"ID"
V-38596
ID
}

printseverity() {
    cat <<"SEVERITY"
medium
SEVERITY
}

printfix() {
    cat <<"FIX"
To set the runtime status of the "kernel.randomize_va_space" kernel parameter, run the following command: # sysctl -w kernel.randomize_va_space=2If this is not the system's default value, add the following line to "/etc/sysctl.conf": kernel.randomize_va_space = 2
FIX
}

printtitle() {
    cat <<"TITLE"
The system must implement virtual address space randomization.
TITLE
}

printdescription() {
    cat <<"DESCRIPTION"
Address space layout randomization (ASLR) makes it more difficult for an attacker to predict the location of attack code he or she has introduced into a process's address space during an attempt at exploitation. Additionally, ASLR also makes it more difficult for an attacker to know the location of existing code in order to repurpose it using return oriented programming (ROP) techniques.
DESCRIPTION
}

