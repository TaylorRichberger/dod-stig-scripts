my $id = 'V-4370';
my $title = 'The traceroute command must be group-owned by sys, bin, or system.';
my $severity = 'medium';
my $description = 'If the group owner of the traceroute command has not been set to a system group, unauthorized users could have access to the command and use it to gain information regarding a network\'s topology inside of the firewall.  This information may allow an attacker to determine trusted routers and other network information possibly leading to system and network compromise.';
my $fix = 'Change the group owner of the traceroute command to sys, bin, or system.

Procedure:
# chgrp system /usr/bin/traceroute';
my $autotest = 1;
my $autofix = 1;
my $filename = '/usr/bin/traceroute';

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
