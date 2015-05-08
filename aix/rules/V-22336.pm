my $id = 'V-22336';
my $title = 'The /etc/group file must be group-owned by security, bin, sys, or system.';
my $severity = 'medium';
my $description = 'The /etc/group file is critical to system security and must be protected from unauthorized modification.  The group file contains a list of system groups and associated information.';
my $fix = 'Change the group owner of the /etc/group file to security, bin, sys, or system.

# chgrp security /etc/group';
my $autotest = 1;
my $autofix = 1;
my $filename = '/etc/group';

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
