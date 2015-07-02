my $id = 'V-43150';
my $title = 'The login user list must be disabled.';
my $severity = 'medium';
my $description = 'Leaving the user list enabled is a security risk since it allows anyone with physical access to the system to quickly enumerate known user accounts without logging in.';
my $fix = 'In the default graphical environment, users logging directly into the system are greeted with a login screen that displays all known users. This functionality should be disabled.Run the following command to disable the user list:$ sudo gconftool-2 --direct \--config-source xml:readwrite:/etc/gconf/gconf.xml.mandatory \--type bool --set /apps/gdm/simple-greeter/disable_user_list true';
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
