my $id = 'V-29504';
my $title = 'The system must not have the daytime service active.';
my $severity = 'medium';
my $description = 'The daytime service runs as root from the inetd daemon and can provide an opportunity for Denial of Service PING or PING-PONG attacks.   The daytime service is unnecessary and it increases the attack vector of the system.';
my $fix = 'Edit /etc/inetd.conf and comment out daytime service lines for both TCP and UDP protocols. 
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
    return STIG::FileShouldNotContain($filename, qr/daytime/);
}

sub fix()
{
    STIG::sedi($filename, 's/^.*daytime/#&/');
    return `refresh -s inetd`;
}

1;
