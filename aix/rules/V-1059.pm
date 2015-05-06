my $id = 'V-1059';
my $title = 'The /var/private/smbpasswd file must have mode 0600 or less permissive.';
my $severity = 'medium';
my $description = 'If the smbpasswd file has a mode more permissive than 0600, the smbpasswd file may be maliciously accessed or modified, potentially resulting in the compromise of Samba accounts.';
my $fix = 'Change the mode of the smbpasswd file to 0600.

Procedure:
# chmod 0600 /var/private/smbpasswd';
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
    return STIG::checkMode($filename, 0600);
}

sub fix()
{
    return `chmod 0600 $filename`;
}

1;
