my $id = 'V-986';
my $title = 'Default system accounts (with the exception of root) must not be listed in the at.allow file or must be included in the at.deny file if the at.allow file does not exist.';
my $severity = 'medium';
my $description = 'Default accounts, such as bin, sys, adm, uucp, daemon, and others, should never have access to the at facility.  This would create a possible vulnerability open to intruders or malicious users.';
my $fix = 'Remove the default accounts (such as bin, sys, adm, and others) from the at.allow file.';
my $autotest = 0;
my $autofix = 0;
my $filename = '/var/adm/cron/at.allow';

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
    return STIG::FileShouldNotContain($filename, qr/^(bin|sys|adm|uucp|daemon)$/);
}

sub fix()
{
    return STIG::sedi($filename, '/^\(bin\|sys\|adm\|uucp\|daemon\)$/d');
}

1;
