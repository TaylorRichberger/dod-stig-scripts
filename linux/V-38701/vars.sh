#!/bin/sh
printseverity() {
    cat <<"SEVERITY"
high
SEVERITY
}

printfix() {
    cat <<"FIX"
If running the "tftp" service is necessary, it should be configured to change its root directory at startup. To do so, ensure "/etc/xinetd.d/tftp" includes "-s" as a command line argument, as shown in the following example (which is also the default): server_args = -s /var/lib/tftpboot
FIX
}

printtitle() {
    cat <<"TITLE"
The TFTP daemon must operate in secure mode which provides access only to a single directory on the host file system.
TITLE
}

printdescription() {
    cat <<"DESCRIPTION"
Using the "-s" option causes the TFTP service to only serve files from the given directory. Serving files from an intentionally specified directory reduces the risk of sharing files which should remain private.
DESCRIPTION
}

printid() {
    cat <<"ID"
V-38701
ID
}

