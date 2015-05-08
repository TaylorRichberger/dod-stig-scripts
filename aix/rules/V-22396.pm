my $id = 'V-22396';
my $title = 'The "at" directory must be group-owned by system, bin, sys, or cron.';
my $severity = 'medium';
my $description = 'If the group of the "at" directory is not system, bin, sys, or cron, unauthorized users could be allowed to view or edit files containing sensitive information within the directory.';
my $fix = 'Change the group ownership of the file to bin, sys, system, or cron.

Procedure:
# chgrp cron /var/spool/cron/atjobs';
my $autotest = 1;
my $autofix = 1;
my $filename = '/var/spool/cron/atjobs';

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
    return STIG::GroupShouldMatch($filename, qr/^(bin|sys|cron|system)$/);
}

sub fix()
{
    return `chgrp cron $filename`;
}

1;
