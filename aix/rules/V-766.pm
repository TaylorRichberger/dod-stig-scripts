my $id = 'V-766';
my $title = 'The system must disable accounts after three consecutive unsuccessful login attempts.';
my $severity = 'medium';
my $description = 'Disabling accounts after a limited number of unsuccessful login attempts improves protection against password guessing attacks.';
my $fix = 'Use the chsec command to configure the number of unsuccessful logins resulting in account lockout.  

# chsec -f /etc/security/user -s default -a loginretries=3 
# chsec -f /etc/security/user -s <user id> -a loginretries=3';
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
    my ($output, $problemusers) = STIG::SecShouldNotExceed($filename, 'loginretries', 3);

    return $output;
}

sub fix()
{
    my $output = '';
    my ($dummy, $problemusers) = STIG::SecShouldNotExceed($filename, 'loginretries', 3);
    for my $user (@{$problemusers})
    {
        $output .= `chsec -f $filename -s $user -a loginretries=3`;
    }
    return $output;
}

1;
