my $id = 'V-974';
my $title = 'Access to the cron utility must be controlled using the cron.allow and/or cron.deny file(s).';
my $severity = 'medium';
my $description = 'The cron facility allows users to execute recurring jobs on a regular and unattended basis.  The cron.allow file designates accounts allowed to enter and execute jobs using the cron facility.  If neither cron.allow nor cron.deny exists, then any account may use the cron facility.  This may open the facility up for abuse by system intruders and malicious users.';
my $fix = 'Create /var/adm/cron/cron.allow and/or /var/adm/cron/cron.deny with appropriate content.';
my $autotest = 1;
my $autofix = 0;

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
    my $allow = STIG::FileShouldExist('/var/adm/cron/cron.allow');
    my $deny = STIG::FileShouldExist('/var/adm/cron/cron.deny');
    if ((length($allow) > 0) && (length($deny) > 0))
    {
        return $allow . $deny;
    }
    return '';
}

sub fix()
{
    return 0;
}

1;
