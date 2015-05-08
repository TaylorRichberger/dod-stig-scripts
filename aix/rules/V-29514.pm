my $id = 'V-29514';
my $title = 'The inetd time service must not be active on the system on the inetd daemon.';
my $severity = 'medium';
my $description = 'The time service is an internal inetd function is used by the rdate command.  This service is sometimes used to synchronize clocks at boot time.   The service is outdated.   Use the ntpdate command instead.';
my $fix = 'Edit the /etc/inetd.conf file and comment out the time service line. 

Restart the inetd service.   
# refresh -s inetd';
my $autotest = 1;
my $autofix = 1;

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
    return STIG::FileShouldNotContain('/etc/inetd.conf', qr/^time/);
}

sub fix()
{
    STIG::sedi('/etc/inetd.conf', '/^time/d');
    return `refresh -s inetd`;
}

1;
