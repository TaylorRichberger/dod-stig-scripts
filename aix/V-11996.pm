my $id = 'V-11996';
my $title = 'Process core dumps must be disabled unless needed.';
my $severity = 'low';
my $description = 'Process core dumps contain the memory in use by the process when it crashed.  Process core dump files can be of significant size and their use can result in file systems filling to capacity, which may result in Denial of Service.  Process core dumps can be useful for software debugging.  ';
my $fix = '# chsec -f /etc/security/limits -s default -a core=0';
my $autotest = 1;
my $autofix = 1;
my $filename = '/etc/security/limits';

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
    my ($output, $problemusers) = STIG::SecShouldNotExceed($filename, 'core', 0);
    return $output;
}

sub fix()
{
    my ($dummy, $problemusers) = STIG::SecShouldNotExceed($filename, 'core', 0);
    my $output = '';
    for my $user (@{$problemusers})
    {
        $output .= `chsec -f $filename -s $user -a core=0`;
    }
    return $output;
    return 0;
}

1;
