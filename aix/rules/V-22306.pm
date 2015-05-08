my $id = 'V-22306';
my $title = 'The system must require at least four characters be changed between the old and new passwords during a password change.';
my $severity = 'medium';
my $description = 'To ensure password changes are effective in their goals, the system must ensure old and new passwords have significant differences. Without significant changes, new passwords may be easily guessed based on the value of a previously compromised password.';
my $fix = 'Use the chsec command to change mindiff to 4.

# chsec -f /etc/security/user -s default -a mindiff=4

# chuser mindiff=4 < user id >';
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
    my ($output, $problemusers) = STIG::SecShouldBeAtLeast($filename, 'mindiff', 4);

    return $output;
}

sub fix()
{
    my $output = '';
    my ($dummy, $problemusers) = STIG::SecShouldBeAtLeast($filename, 'mindiff', 4);
    for my $user (@{$problemusers})
    {
        $output .= `chsec -f $filename -s $user -a mindiff=4`;
    }
    return $output;
}

1;
