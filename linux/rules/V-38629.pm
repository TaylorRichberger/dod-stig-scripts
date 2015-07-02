my $id = 'V-38629';
my $title = 'The graphical desktop environment must set the idle timeout to no more than 15 minutes.';
my $severity = 'medium';
my $description = 'Setting the idle delay controls when the screensaver will start, and can be combined with screen locking to prevent access from passersby.';
my $fix = 'Run the following command to set the idle time-out value for inactivity in the GNOME desktop to 15 minutes: # gconftool-2 \--direct \--config-source xml:readwrite:/etc/gconf/gconf.xml.mandatory \--type int \--set /apps/gnome-screensaver/idle_delay 15';
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
