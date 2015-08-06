my $id = 'V-4385';
my $title = 'The system must not use .forward files.';
my $severity = 'medium';
my $description = 'The .forward file allows users to automatically forward mail to another system. Use of .forward files could allow the unauthorized forwarding of mail and could potentially create mail loops which could degrade system performance.';
my $fix = 'Remove .forward files from the system.';
my $autotest = 1;
my $autofix = 1;

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
    my $output = '';
    setpwent();
    while (my @pw = getpwent())
    {
        my $home = $pw[7];
        $output .= STIG::FileShouldNotExist("$home/.forward");
    }
    endpwent();
    return $output;
}

sub fix()
{
    my $output = '';
    setpwent();
    while (my @pw = getpwent())
    {
        my $home = $pw[7];
        if (-e "$home/.forward")
        {
            $output .= `rm $home/.forward`;
        }
    }
    endpwent();
    return $output;
}

1;
