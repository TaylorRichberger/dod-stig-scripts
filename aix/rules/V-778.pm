my $id = 'V-778';
my $title = 'The system must prevent the root account from directly logging in except from the system console.';
my $severity = 'medium';
my $description = 'Limiting the root account direct logins to only system consoles protects the root account from direct unauthorized access from a non-console device.';
my $fix = 'The root account can be protected from non-console device logins by setting rlogin = false in the root: stanza of the /etc/security/user file.
 
#chsec -f /etc/security/user -s root -a rlogin=false';
my $autotest = 1;
my $autofix = 1;
my $filename = '/etc/security/user';
my $stanza = 'root';

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
    return STIG::SecStanzaShouldEqual($filename, $stanza, 'rlogin', 'false');
}

sub fix()
{
    return `chsec -f $filename -s $stanza -a rlogin=false`;
}

1;
