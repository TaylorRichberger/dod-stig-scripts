my $id = 'V-38656';
my $title = 'The system must use SMB client signing for connecting to samba servers using smbclient.';
my $severity = 'low';
my $description = 'Packet signing can prevent man-in-the-middle attacks which modify SMB packets in transit.';
my $fix = 'To require samba clients running "smbclient" to use packet signing, add the following to the "[global]" section of the Samba configuration file in "/etc/samba/smb.conf": client signing = mandatoryRequiring samba clients such as "smbclient" to use packet signing ensures they can only communicate with servers that support packet signing.';
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
