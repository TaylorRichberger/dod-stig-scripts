#!/bin/sh
printid() {
    cat <<"ID"
V-51369
ID
}

printseverity() {
    cat <<"SEVERITY"
low
SEVERITY
}

printfix() {
    cat <<"FIX"
The SELinux "targeted" policy is appropriate for general-purpose desktops and servers, as well as systems in many other roles. To configure the system to use this policy, add or correct the following line in "/etc/selinux/config":SELINUXTYPE=targetedOther policies, such as "mls", provide additional security labeling and greater confinement but are not compatible with many general-purpose use cases. 
FIX
}

printtitle() {
    cat <<"TITLE"
The system must use a Linux Security Module configured to limit the privileges of system services.
TITLE
}

printdescription() {
    cat <<"DESCRIPTION"
Setting the SELinux policy to "targeted" or a more specialized policy ensures the system will confine processes that are likely to be targeted for exploitation, such as network or system services. 
DESCRIPTION
}

