my $id = 'V-22333';
my $title = 'The /etc/passwd file must be group-owned by bin, security, sys, or system.';
my $severity = 'medium';
my $description = 'The /etc/passwd file contains the list of local system accounts.  It is vital to system security and must be protected from unauthorized modification.';
my $fix = 'Change the group owner of the /etc/passwd file to security, bin, sys, or system.

Procedure:
# chgrp  security /etc/passwd';
my $autotest = 1;
my $autofix = 1;
my $filename = '/etc/passwd';

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
    return STIG::GroupShouldMatch($filename, qr/^(bin|security|sys|system)$/);
}

sub fix()
{
    return `chgrp security $filename`;
}

1;
