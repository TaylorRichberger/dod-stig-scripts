#!/bin/sh
printid() {
    cat <<"ID"
V-38597
ID
}

printseverity() {
    cat <<"SEVERITY"
medium
SEVERITY
}

printdescription() {
    cat <<"DESCRIPTION"
ExecShield uses the segmentation feature on all x86 systems to prevent execution in memory higher than a certain address. It writes an address as a limit in the code segment descriptor, to control where code can be executed, on a per-process basis. When the kernel places a process's memory regions such as the stack and heap higher than this address, the hardware prevents execution in that address range.
DESCRIPTION
}

printtitle() {
    cat <<"TITLE"
The system must limit the ability of processes to have simultaneous write and execute access to memory.
TITLE
}

printfix() {
    cat <<"FIX"
To set the runtime status of the "kernel.exec-shield" kernel parameter, run the following command: # sysctl -w kernel.exec-shield=1If this is not the system's default value, add the following line to "/etc/sysctl.conf": kernel.exec-shield = 1
FIX
}

