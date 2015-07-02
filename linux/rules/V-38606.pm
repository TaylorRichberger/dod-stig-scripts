my $id = 'V-38606';
my $title = 'The tftp-server package must not be installed.';
my $severity = 'medium';
my $description = 'Removing the "tftp-server" package decreases the risk of the accidental (or intentional) activation of tftp services.';
my $fix = 'The "tftp-server" package can be removed with the following command: # yum erase tftp-server';
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
