my $id = 'V-29506';
my $title = 'The system must not have the dtspc service active.';
my $severity = 'medium';
my $description = 'This service is started automatically by the inetd daemon with root permission in response to a CDE client requesting a process to be started on the daemonâ€™s host system.   Running the dtscp service is unnecessary and it increases the attack vector of the system.';
my $fix = 'Edit /etc/inetd.conf and comment out dtspc service line. 

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
    return STIG::FileShouldNotContain($filename, qr/^[^#].*dtsp/);
}

sub fix()
{
    STIG::sedi($filename, 's/^[^#].*dtsp/#&/');
    return `refresh -s inetd`;
}

1;
