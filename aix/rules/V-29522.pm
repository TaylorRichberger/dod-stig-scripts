my $id = 'V-29522';
my $title = 'The /etc/ftpaccess.ctl file must have mode 0640 or less permissive.';
my $severity = 'medium';
my $description = 'Excessive permissions on the ftpaccess.ctl file could permit unauthorized modification. Unauthorized modification could result in Denial of Service to authorized FTP users or permit unauthorized access to system information.';
my $fix = 'Change the mode of the /etc/ftpaccess.ctl file to 0640.

# chmod 0640 /etc/ftpaccess.ctl';
my $autotest = 1;
my $autofix = 1;
my $filename = '/etc/ftpaccess.ctl';

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
    return STIG::ModeShouldNotExceed($filename, 0644);
}

sub fix()
{
    return `chmod 0644 $filename`;
}

1;
