my $id = 'V-38676';
my $title = 'The xorg-x11-server-common (X Windows) package must not be installed, unless required.';
my $severity = 'low';
my $description = 'Unnecessary packages should not be installed to decrease the attack surface of the system.';
my $fix = 'Removing all packages which constitute the X Window System ensures users or malicious software cannot start X. To do so, run the following command: # yum groupremove "X Window System"';
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
