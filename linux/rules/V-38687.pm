my $id = 'V-38687';
my $title = 'The system must provide VPN connectivity for communications over untrusted networks.';
my $severity = 'low';
my $description = 'Providing the ability for remote users or systems to initiate a secure VPN connection protects information when it is transmitted over a wide area network.';
my $fix = 'The Openswan package provides an implementation of IPsec and IKE, which permits the creation of secure tunnels over untrusted networks. The "openswan" package can be installed with the following command: # yum install openswan';
my $autotest = 0;
my $autofix = 0;

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
    return 0;
}

sub fix()
{
    return 0;
}
