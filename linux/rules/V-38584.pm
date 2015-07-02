my $id = 'V-38584';
my $title = 'The xinetd service must be uninstalled if no network services utilizing it are enabled.';
my $severity = 'low';
my $description = 'Removing the "xinetd" package decreases the risk of the xinetd service\'s accidental (or intentional) activation.';
my $fix = 'The "xinetd" package can be uninstalled with the following command: # yum erase xinetd';
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
