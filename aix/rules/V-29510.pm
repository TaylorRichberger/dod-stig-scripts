my $id = 'V-29510';
my $title = 'The system must not have the talk or ntalk services active.';
my $severity = 'medium';
my $description = 'The talk and ntalk commands allow users on the same or different systems on converse. The talk daemons are started from the inetd process and run as root.  These unnecessary processes increase the attack vector of the system  and may cause Denial of Service by scrambling the users display. ';
my $fix = 'Edit /etc/inetd.conf and comment out TCP and UDP for the talk service.   
Edit /etc/inetd.conf and comment out TCP and UDP for the ntalk service.

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
    return STIG::FileShouldNotContain($filename, qr/^n?talk/);
}

sub fix()
{
    STIG::sedi($filename, '/^n*talk/d');
    return `refresh -s inetd`;
}

1;
