my $id = 'V-29513';
my $title = 'The system must not have the systat service active.';
my $severity = 'medium';
my $description = 'The systat daemon allows remote users to see the running process and who is running them.  This may aid in information collection for an attack and weaken the security posture of the system.';
my $fix = 'Edit /etc/inetd.conf and comment out systat the service line. 

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
    return STIG::FileShouldNotContain($filename, qr/^[^#].*sysstat/);
}

sub fix()
{
    STIG::sedi($filename, 's/^[^#].*sysstat/#&/');
    return `refresh -s inetd`;
}

1;
