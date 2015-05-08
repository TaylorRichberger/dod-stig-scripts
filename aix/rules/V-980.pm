my $id = 'V-980';
my $title = 'Cron and crontab directories must be owned by root or bin.';
my $severity = 'medium';
my $description = 'Incorrect ownership of the cron or crontab directories could permit unauthorized users the ability to alter cron jobs and run automated jobs as privileged users.  Failure to give ownership of cron or crontab directories to root or to bin provides the designated owner and unauthorized users with the potential to access sensitive information or change the system configuration which could weaken the system\'s security posture.';
my $fix = 'Change the owner of the crontab directory.
# chown root /var/spool/cron/crontabs';
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
    return STIG::OwnerShouldMatch($filename, qr/^(bin|root)$/);
}

sub fix()
{
    return `chown root $filename`;
}

1;
