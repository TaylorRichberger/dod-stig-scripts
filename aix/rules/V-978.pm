my $id = 'V-978';
my $title = 'Crontab files must have mode 0600 or less permissive.';
my $severity = 'medium';
my $description = 'To protect the integrity of scheduled system jobs and prevent malicious modification to these jobs, crontab files must be secured.
';
my $fix = 'Change the mode of the crontab files.
# chmod 0600 /var/spool/cron/crontabs/*';
my $autotest = 1;
my $autofix = 1;
my $dir = '/var/spool/cron/crontabs';

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
    my $output = '';
    opendir(my $d, $dir);
    while (my $filename = readdir($d))
    {
        if ($filename !~ m/^\.*$/)
        {
            $output .= STIG::ModeShouldNotExceed($filename, 0600);
        }
    }
    return $output;
}

sub fix()
{
    return `chmod 0600 $dir/*`;
}

1;
