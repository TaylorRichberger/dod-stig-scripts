my $id = 'V-29500';
my $title = 'The system must not have the chargen service active.';
my $severity = 'medium';
my $description = 'When contacted, chargen responds with some random characters. When contacted via UDP, it 
will respond with a single UDP packet. When contacted via TCP, it will continue spewing characters until the client closes the connection. An easy attack is \'ping-pong\' in which an attacker spoofs a packet between two machines running chargen. This will cause them to spew characters at each other, slowing the machines down and saturating the network.  
The chargen service is unnecessary and provides an opportunity for Denial of Service attack.  ';
my $fix = 'Edit /etc/inetd.conf and comment out the chargen service line for both udp and tcp protocols.

Restart the inetd service.   
#refresh -s inetd';
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
    return STIG::FileShouldNotContain($filename, qr/^chargen/);
}

sub fix()
{
    STIG::sedi($filename, '/^chargen/d');
    return `refresh -s inetd`;
}

1;
