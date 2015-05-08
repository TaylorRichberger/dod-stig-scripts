my $id = 'V-4364';
my $title = 'The at directory must have mode 0755 or less permissive.';
my $severity = 'medium';
my $description = 'If the at directory has a mode more permissive than 0755, unauthorized users could be allowed to view or to edit files containing sensitive information within the at directory.  Unauthorized modifications could result in Denial of Service to authorized at jobs.';
my $fix = 'Change the mode of the "at" directory to 0755.

Procedure:
# chmod 0755 < at directory >';
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
    return STIG::ModeShouldNotExceed($filename, 0755);
}

sub fix()
{
    return `chmod 750 $filename`;
}

1;
