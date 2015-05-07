my $id = 'V-12049';
my $title = 'Network analysis tools must not be installed.';
my $severity = 'medium';
my $description = 'Network analysis tools allow for the capture of network traffic visible to the system.';
my $fix = 'Remove the network analysis tool binary from the system. 

Procedure:
# rm /usr/sbin/tcpdump';
my $autotest = 1;
my $autofix = 1;
my $filename = '/usr/sbin/tcpdump';

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
    return STIG::FileShouldNotExist($filename);
}

sub fix()
{
    return `rm $filename`;
}

1;
