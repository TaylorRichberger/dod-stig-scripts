my $id = 'V-29509';
my $title = 'The system must not have the PostOffice Protocol (POP3) service active.';
my $severity = 'medium';
my $description = 'The POP3 service is only needed if the server is acting as a mail server and clients are using applications that only support POP3.  Users\' ids and passwords are sent in plain text to the POP3 service.  If mail client access is needed,  consider using IMAP or SSL enabled POP3.';
my $fix = 'Edit /etc/inetd.conf and comment out POP3 the service line. Restart the inetd service.   
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
    return STIG::ProgramShouldNotBeRunning('pop3');
}

sub fix()
{
    STIG::sedi('/etc/inetd.conf', '/^pop3/d');
    return `refresh -s inetd`;
}

1;
