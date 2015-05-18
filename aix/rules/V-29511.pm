my $id = 'V-29511';
my $title = 'The system must not have the netstat service active on the inetd process.';
my $severity = 'medium';
my $description = 'The netstat service can potentially give out network information on active connections if it is running.  The information given out can aid in an attack and weaken the systems defensive posture.';
my $fix = 'Edit /etc/inetd.conf and comment out the netstat service line. 

Restart the inetd service.   
# refresh -s inetd';
my $autotest = 1;
my $autofix = 1;
my $filename = '/etc/inetd.conf';

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
    return STIG::FileShouldNotContain($filename, qr/^netstat/);
}

sub fix()
{
    STIG::sedi($filename, '/^netstat/d');
    return `refresh -s inetd`;
}

1;
