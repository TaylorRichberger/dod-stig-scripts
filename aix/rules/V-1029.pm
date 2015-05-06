my $id = 'V-1029';
my $title = 'The /var/private/smbpasswd file must be owned by root.';
my $severity = 'medium';
my $description = 'If the smbpasswd file is not owned by root, the smbpasswd file may be maliciously accessed or modified, potentially resulting in the compromise of Samba accounts.';
my $fix = 'Change the owner of the smbpasswd file to root.

# chown root /var/private/smbpasswd';
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
    return STIG::checkOwner($filename, 'root');
}

sub fix()
{
    return `chown root $filename`;
}

1;
