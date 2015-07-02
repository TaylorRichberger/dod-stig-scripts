my $id = 'V-38638';
my $title = 'The graphical desktop environment must have automatic lock enabled.';
my $severity = 'medium';
my $description = 'Enabling the activation of the screen lock after an idle period ensures password entry will be required in order to access the system, preventing access by passersby.';
my $fix = 'Run the following command to activate locking of the screensaver in the GNOME desktop when it is activated: # gconftool-2 --direct \--config-source xml:readwrite:/etc/gconf/gconf.xml.mandatory \--type bool \--set /apps/gnome-screensaver/lock_enabled true';
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
