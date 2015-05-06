my $id = 'V-1058';
my $title = 'The /var/private/smbpasswd file must be group-owned by sys or system.';
my $severity = 'medium';
my $description = 'If the smbpasswd file is not group-owned by root, the smbpasswd file may be maliciously accessed or modified, potentially resulting in the compromise of Samba accounts.';
my $fix = 'Use the chgrp command to change  the group owner of the smbpasswd file to system. 

# chgrp system /var/private/smbpasswd';
my $autotest = 1;
my $autofix = 1;
my $filename = '/var/private/smbpasswd';

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
    return STIG::checkGroups($filename, qr/^(sys|system)$/);
}

sub fix()
{
    return `chgrp system $filename`;
}

1;
