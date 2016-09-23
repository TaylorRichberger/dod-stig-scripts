my $id = 'V-29505';
my $title = 'The system must not have the discard service active.';
my $severity = 'medium';
my $description = 'The discard service runs as root from the inetd server and can be used in Denial of Service attacks.   The discard  service is unnecessary and it increases the attack vector of the system.';
my $fix = 'Edit /etc/inetd.conf and comment out the discard service line for both TCP and UDP protocols. 
Restart the inetd service.
#refresh -s inetd';
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
    return STIG::FileShouldNotContain($filename, qr/^[^#].*discard/);
}

sub fix()
{
    STIG::sedi($filename, 's/^[^#].*discard/#&/');
    return `refresh -s inetd`;
}

1;
