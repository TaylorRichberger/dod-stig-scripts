my $id = 'V-22427';
my $title = 'The services file must be group-owned by bin, sys, or system.';
my $severity = 'medium';
my $description = 'Failure to give ownership of system configuration files to root or a system group provides the designated owner and unauthorized users with the potential to change the system configuration which could weaken the system\'s security posture.';
my $fix = 'Change the group owner of the services file.

Procedure:
# chgrp system /etc/services';
my $autotest = 1;
my $autofix = 1;
my $filename = '/etc/services';

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
    return STIG::GroupShouldMatch($filename, qr/^(bin|sys|system)$/);
}

sub fix()
{
    return `chgrp system $filename`;
}

1;
