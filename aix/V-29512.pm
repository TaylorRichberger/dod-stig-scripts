my $id = 'V-29512';
my $title = 'The system must not have the PCNFS service active.';
my $severity = 'medium';
my $description = 'The PCNFS service predates Microsoftâ€™s SMB specifications.   If a similar service is needed to share files from a Windows based OS to a UNIX based OS,  consider SAMBA.';
my $fix = 'Edit /etc/inetd.conf and comment out the PCNFS service line. Restart the inetd service.   
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
    return STIG::FileShouldNotContain($filename, qr/pcnfsd/);
}

sub fix()
{
    STIG::sedi($filename, 's/^.*pcnfsd/#&/');
    return `refresh -s inetd`;
}

1;
