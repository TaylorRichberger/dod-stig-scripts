my $id = 'V-38476';
my $title = 'Vendor-provided cryptographic certificates must be installed to verify the integrity of system software. (made distribution agnostic)';
my $severity = 'high';
my $description = 'The Red Hat, CentOS, Oracle Linux, Ubuntu GPG key is necessary to cryptographically verify packages are from Vendor. ';
my $fix = 'To ensure the system can cryptographically verify base software packages come from Red Hat (and to connect to the Red Hat Network to receive them), the Red Hat GPG key must properly be installed. To install the Red Hat GPG key, run:# rhn_registerIf the system is not connected to the Internet or an RHN Satellite, then install the Red Hat GPG key from trusted media such as the Red Hat installation CD-ROM or DVD. Assuming the disc is mounted in "/media/cdrom", use the following command as the root user to import it into the keyring:# rpm --import /media/cdrom/RPM-GPG-KEY';
my $autotest = 0;
my $autofix = 0;

use lib 'lib';
use STIG;

sub getId()
{
    return $id;
}

sub getTitle()
{
    return $title;
}

sub getSeverity()
{
    return $severity;
}

sub getDescription()
{
    return $description;
}

sub getFix()
{
    return $fix;
}

sub canTest()
{
    return $autotest;
}

sub canFix()
{
    return $autofix;
}

sub test()
{
    return 0;
}

sub fix()
{
    return 0;
}
