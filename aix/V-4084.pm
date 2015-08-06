my $id = 'V-4084';
my $title = 'The system must prohibit the reuse of passwords within five iterations.';
my $severity = 'medium';
my $description = 'If a user, or root, used the same password continuously or was allowed to change it back shortly after being forced to change it to something else, it would provide a potential intruder with the opportunity to keep guessing at one user\'s password until it was guessed correctly.';
my $fix = 'Use the chsec command to configure the system to prohibit the reuse of passwords within five iterations.

# chsec -f /etc/security/user -s default -a histsize=5
# chuser histsize=5 < user id >';
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
    my ($output, $problemusers) = STIG::SecShouldBeAtLeast($filename, 'histsize', 5);
    return $output;
}

sub fix()
{
    my ($dummy, $problemusers) = STIG::SecShouldBeAtLeast($filename, 'histsize', 5);
    my $output = '';
    for my $user (@{$problemusers})
    {
        $output .= `chsec -f $filename -s $user -a histsize=5`;
    }
    return $output;
}

1;
