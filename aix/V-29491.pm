my $id = 'V-29491';
my $title = 'The /etc/netsvc.conf file must be root owned.';
my $severity = 'medium';
my $description = 'The /etc/netsvc.conf file is used to specify the ordering of name resolution for the sendmail command,  alias resolution for the sendmail command, and host name resolution routines.    Malicious changes could prevent the system from functioning correctly or compromise system security.';
my $fix = 'Change the owner of the /etc/netsvc.conf file to root. 

# chown root /etc/netsvc.conf';
my $autotest = 1;
my $autofix = 1;
my $filename = '/etc/netsvc.conf';

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
    return STIG::OwnerShouldBe($filename, 'root');
}

sub fix()
{
    return `chown root $filename`;
}

1;
