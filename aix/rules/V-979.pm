my $id = 'V-979';
my $title = 'Cron and crontab directories must have mode 0755 or less permissive.';
my $severity = 'medium';
my $description = 'To protect the integrity of scheduled system jobs and to prevent malicious modification to these jobs, crontab files must be secured.
';
my $fix = 'Change the mode of the crontab directory.
# chmod 0755 /var/spool/cron/crontabs';
my $autotest = 1;
my $autofix = 1;
my $filename = '/var/spool/cron/crontabs';

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
    return `chmod 0755 $filename`;
}

1;
