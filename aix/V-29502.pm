my $id = 'V-29502';
my $title = 'The system must not have the tool-talk database server (ttdbserver) service active.';
my $severity = 'medium';
my $description = 'The ttdbserver service for CDE is an unnecessary service that runs as root and might be compromised.';
my $fix = 'Edit /etc/inetd.conf and comment out ttdbserver service line. 

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
    return STIG::FileShouldNotContain($filename, qr/^[^#].*ttdbserver/);
}

sub fix()
{
    STIG::sedi($filename, 's/^[^#].*ttdbserver/#&/');
    return `refresh -s inetd`;
}

1;
