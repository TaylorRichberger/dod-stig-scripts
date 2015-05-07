my $id = 'V-11976';
my $title = 'User passwords must be changed at least every 60 days.';
my $severity = 'medium';
my $description = 'Limiting the lifespan of authenticators limits the period of time an unauthorized user has access to the system while using compromised credentials and reduces the period of time available for password-guessing attacks to run against a single password.';
my $fix = 'Use the chsec command to set the maxage field to 8 for each user.

# chsec -f /etc/security/user -s default -a maxage=8
# chuser maxage=8 < user id >';
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
    my ($output, $problemusers) = STIG::SecShouldNotExceed($filename, 'maxage', 8);
    return $output;
}

sub fix()
{
    my ($dummy, $problemusers) = STIG::SecShouldNotExceed($filename, 'maxage', 8);
    my $output = '';
    for my $user (@{$problemusers})
    {
        $output .= `chsec -f $filename -s $user -a maxage=8`;
    }
    return $output;
}

1;
