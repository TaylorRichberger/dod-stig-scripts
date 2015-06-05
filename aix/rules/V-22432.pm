my $id = 'V-22432';
my $title = 'The rlogind service must not be running.';
my $severity = 'medium';
my $description = 'The rlogind process provides a typically unencrypted, host-authenticated remote access service.  SSH should be used in place of this service.';
my $fix = 'Disable the rlogind service out of the \'/etc/inetd.conf\' file.
# vi  /etc/inetd.conf 
Comment out the rlogind service. Restart the inetd service.  
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
    return STIG::FileShouldNotContain($filename, qr/^rlogind/);
}

sub fix()
{
    STIG::sedi($filename, 's/^rlogind/#&/d');
    return `refresh -s inetd`;
}

1;
