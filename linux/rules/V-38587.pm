my $id = 'V-38587';
my $title = 'The telnet-server package must not be installed.';
my $severity = 'high';
my $description = 'Removing the "telnet-server" package decreases the risk of the unencrypted telnet service\'s accidental (or intentional) activation.Mitigation:  If the telnet-server package is configured to only allow encrypted sessions, such as with Kerberos or the use of encrypted network tunnels, the risk of exposing sensitive information is mitigated.';
my $fix = 'The "telnet-server" package can be uninstalled with the following command: # yum erase telnet-server';
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
