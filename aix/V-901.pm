my $id = 'V-901';
my $title = 'All users\' home directories must have mode 0750 or less permissive.';
my $severity = 'medium';
my $description = 'Excessive permissions on home directories allow unauthorized access to user\'s files.';
my $fix = 'Change the mode of users\' home directories to 0750 or less permissive.

Procedure (example):
# chmod 0750 <home directory>';
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
        my $uid = $pw[2];
        if (($uid >= 200) && ($uid < 100000))
        {
            $output .= STIG::ModeShouldNotExceed($home, 0750);
        }
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
        my $uid = $pw[2];
        if (($uid >= 200) && ($uid < 100000))
        {
            $output .= `chmod 0750 $home`;
        }
    }
    endpwent();
    return $output;
}

1;
