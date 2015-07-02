my $id = 'V-38657';
my $title = 'The system must use SMB client signing for connecting to samba servers using mount.cifs.';
my $severity = 'low';
my $description = 'Packet signing can prevent man-in-the-middle attacks which modify SMB packets in transit.';
my $fix = 'Require packet signing of clients who mount Samba shares using the "mount.cifs" program (e.g., those who specify shares in "/etc/fstab"). To do so, ensure signing options (either "sec=krb5i" or "sec=ntlmv2i") are used. See the "mount.cifs(8)" man page for more information. A Samba client should only communicate with servers who can support SMB packet signing.';
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
