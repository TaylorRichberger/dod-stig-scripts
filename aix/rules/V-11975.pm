my $id = 'V-11975';
my $title = 'The system must require passwords to contain no more than three consecutive repeating characters.';
my $severity = 'medium';
my $description = 'To enforce the use of complex passwords, the number of consecutive repeating characters is limited.  Passwords with excessive repeated characters may be more vulnerable to password-guessing attacks.';
my $fix = 'Use the chsec command to set maxrepeats to 3.

# chsec -f /etc/security/user -s default -a maxrepeats=3

# chuser maxrepeats=3 < user id >';
my $autotest = 1;
my $autofix = 1;
my $filename = '/etc/security/user';

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
    my ($output, $problemusers) = STIG::maxSec($filename, 'maxrepeats', 3);

    return $output;
}

sub fix()
{
    my ($dummy, $problemusers) = STIG::maxSec($filename, 'maxrepeats', 3);
    my $output = '';
    for my $user (@{$problemusers})
    {
        $output .= `chsec -f /etc/security/user -s $user -a maxrepeats=3`;
    }
    return $output;
}

1;
