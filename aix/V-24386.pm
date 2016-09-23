my $id = 'V-24386';
my $title = 'The telnet daemon must not be running.';
my $severity = 'high';
my $description = 'The telnet daemon provides a typically unencrypted remote access service which does not provide for the confidentiality and integrity of user passwords or the remote session.  If a privileged user were to log on using this service, the privileged user password could be compromised.';
my $fix = 'Edit the /etc/inetd.conf file and comment out the telnet line.

Reload the inetd process.  
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
    return STIG::FileShouldNotContain($filename, qr/^[^#].*telnet/);
}

sub fix()
{
    STIG::sedi($filename, 's/^[^#].*telnet/#&/');
    return `refresh -s inetd`;
}

1;
