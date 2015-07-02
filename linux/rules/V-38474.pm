my $id = 'V-38474';
my $title = 'The system must allow locking of graphical desktop sessions.';
my $severity = 'low';
my $description = 'The ability to lock graphical desktop sessions manually allows users to easily secure their accounts should they need to depart from their workstations temporarily.';
my $fix = 'Run the following command to set the Gnome desktop keybinding for locking the screen:# gconftool-2--direct \--config-source xml:readwrite:/etc/gconf/gconf.xml.mandatory \--type string \--set /apps/gnome_settings_daemon/keybindings/screensaver "<Control><Alt>l"Another keyboard sequence may be substituted for "<Control><Alt>l", which is the default for the Gnome desktop.';
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
