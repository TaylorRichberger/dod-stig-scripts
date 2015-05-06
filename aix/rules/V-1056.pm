my $id = 'V-1056';
my $title = 'The /usr/lib/smb.conf file must be group-owned by bin, sys, or system.';
my $severity = 'medium';
my $description = 'If the group-owner of the smb.conf file is not root or a system group, the file may be maliciously modified and the Samba configuration could be compromised.';
my $fix = 'Change the group owner of the smb.conf file. 
Procedure: 
# chgrp system /usr/lib/smb.conf';
my $autotest = 1;
my $autofix = 1;
my $filename = '/usr/lib/smb.conf';

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
    return STIG::checkGroups($filename, qr/^(bin|sys|system)$/);
}

sub fix()
{
    return `chgrp system $filename`;
}

1;
