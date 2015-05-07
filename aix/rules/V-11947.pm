my $id = 'V-11947';
my $title = 'The system must require passwords to contain a minimum of 14 characters.';
my $severity = 'medium';
my $description = 'The use of longer passwords reduces the ability of attackers to successfully obtain valid passwords using guessing or exhaustive search techniques by increasing the password search space.';
my $fix = 'Change the minimum password length to 14 or more. 

# chsec -f /etc/security/user -s default -a minlen=14
# chuser minlen=14 <user id>';
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
    my ($output, $problemusers) = STIG::SecShouldBeAtLeast($filename, 'minlen', 14);
    return $output;
}

sub fix()
{
    my ($dummy, $problemusers) = STIG::SecShouldBeAtLeast($filename, 'minlen', 14);
    my $output = '';
    for my $user (@{$problemusers})
    {
        $output .= `chsec -f $filename -s $user -a minlen=14`;
    }
    return $output;
}

1;
