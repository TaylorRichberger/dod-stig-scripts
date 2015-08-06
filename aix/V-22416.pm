my $id = 'V-22416';
my $title = 'The system must ignore IPv4 ICMP redirect messages.';
my $severity = 'medium';
my $description = 'ICMP redirect messages are used by routers to inform hosts a more direct route exists for a particular destination. These messages modify the host\'s route table and are unauthenticated. An illicit ICMP redirect message could result in a man-in-the-middle attack.

';
my $fix = 'Configure the system to ignore IPv4 ICMP redirect messages. 
#/usr/sbin/no -p -o ipignoreredirects=1';
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
    return STIG::TunableShouldBeAtLeast('ipignoreredirects', 1);
}

sub fix()
{
    return `/usr/sbin/no -po 'ipignoreredirects=1'`;
}

1;
