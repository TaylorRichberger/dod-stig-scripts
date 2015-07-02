my $id = 'V-38639';
my $title = 'The system must display a publicly-viewable pattern during a graphical desktop environment session lock.';
my $severity = 'low';
my $description = 'Setting the screensaver mode to blank-only conceals the contents of the display from passersby.';
my $fix = 'Run the following command to set the screensaver mode in the GNOME desktop to a blank screen: # gconftool-2 \--direct \--config-source xml:readwrite:/etc/gconf/gconf.xml.mandatory \--type string \--set /apps/gnome-screensaver/mode blank-only';
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
