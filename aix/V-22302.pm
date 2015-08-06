my $id = 'V-22302';
my $title = 'The system must enforce the entire password during authentication.';
my $severity = 'medium';
my $description = 'Some common password hashing schemes only process the first eight characters of a user\'s password, which reduces the effective strength of the password.
';
my $fix = 'Configure the system to enforce the correctness of the entire password during authentication.

Configure the system to use sha password hashing.
#chsec -f /etc/security/login.cfg -s usw -a pwd_algorithm=ssha256';
my $autotest = 1;
my $autofix = 1;
my $filename = '/etc/security/login.cfg';
my $stanza = 'usw';

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
    return STIG::SecStanzaShouldEqual($filename, $stanza, 'pwd_algorithm', 'ssha256');
}

sub fix()
{
    return `chsec -f $filename -s $stanza -a pwd_algorithm=ssha256`;
}

1;
