#!/bin/sh
printtitle() {
    cat <<"TITLE"
Automated file system mounting tools must not be enabled unless needed.
TITLE
}

printdescription() {
    cat <<"DESCRIPTION"
All filesystems that are required for the successful operation of the system should be explicitly listed in "/etc/fstab" by an administrator. New filesystems should not be arbitrarily introduced via the automounter.The "autofs" daemon mounts and unmounts filesystems, such as user home directories shared via NFS, on demand. In addition, autofs can be used to handle removable media, and the default configuration provides the cdrom device as "/misc/cd". However, this method of providing access to removable media is not common, so autofs can almost always be disabled if NFS is not in use. Even if NFS is required, it is almost always possible to configure filesystem mounts statically by editing "/etc/fstab" rather than relying on the automounter. 
DESCRIPTION
}

printid() {
    cat <<"ID"
V-38437
ID
}

printfix() {
    cat <<"FIX"
If the "autofs" service is not needed to dynamically mount NFS filesystems or removable media, disable the service for all runlevels: # chkconfig --level 0123456 autofs offStop the service if it is already running: # service autofs stop
FIX
}

printseverity() {
    cat <<"SEVERITY"
low
SEVERITY
}

