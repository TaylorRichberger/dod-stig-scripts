my $id = 'V-22295';
my $title = 'The time synchronization configuration file (such as /etc/ntp.conf) must be group-owned by bin, sys, or system.';
my $severity = 'medium';
my $description = 'A synchronized system clock is critical for the enforcement of time-based policies and the correlation of logs and audit records with other systems.  If an illicit time source is used for synchronization, the integrity of system logs and the security of the system could be compromised.  If the configuration files controlling time synchronization are not owned by a system group, unauthorized modifications could result in the failure of time synchronization.';
my $fix = 'Change the group owner of the NTP configuration file.

Procedure:
# chgrp system /etc/ntp.conf';
my $autotest = 1;
my $autofix = 1;
my $filename = '/etc/ntp.conf';

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
