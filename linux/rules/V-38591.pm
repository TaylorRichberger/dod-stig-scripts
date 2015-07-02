my $id = 'V-38591';
my $title = 'The rsh-server package must not be installed.';
my $severity = 'high';
my $description = 'The "rsh-server" package provides several obsolete and insecure network services. Removing it decreases the risk of those services\' accidental (or intentional) activation.';
my $fix = 'The "rsh-server" package can be uninstalled with the following command: # yum erase rsh-server';
my $autotest = 0;
my $autofix = 0;

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
    return 0;
}

sub fix()
{
    return 0;
}
