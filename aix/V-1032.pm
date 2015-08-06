my $id = 'V-1032';
my $title = 'Users must not be able to change passwords more than once every 24 hours.';
my $severity = 'medium';
my $description = 'The ability to change passwords frequently facilitates users reusing the same password. This can result in users effectively never changing their passwords. This would be accomplished by users changing their passwords when required and then immediately changing it to the original value.';
my $fix = 'Use SMIT or the chsec command to set the minimum password age to 1 week.

# chsec -f /etc/security/user -s default -a minage=1 
# chsec -f /etc/security/user -s <user id> -a minage=1

OR

# smitty chuser';
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
    my ($output, $problemusers) = STIG::SecShouldBeAtLeast($filename, 'minage', 1);

    return $output;
}

sub fix()
{
    my $output = '';
    my ($dummy, $problemusers) = STIG::SecShouldBeAtLeast($filename, 'minage', 1);
    for my $user (@{$problemusers})
    {
        $output .= `chsec -f $filename -s $user -a minage=1`;
    }
    return $output;
}

1;
