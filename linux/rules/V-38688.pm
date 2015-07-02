my $id = 'V-38688';
my $title = 'A login banner must be displayed immediately prior to, or as part of, graphical desktop environment login prompts.';
my $severity = 'medium';
my $description = 'An appropriate warning message reinforces policy awareness during the logon process and facilitates possible legal action against attackers.';
my $fix = 'To enable displaying a login warning banner in the GNOME Display Manager\'s login screen, run the following command: # gconftool-2 --direct \--config-source xml:readwrite:/etc/gconf/gconf.xml.mandatory \--type bool \--set /apps/gdm/simple-greeter/banner_message_enable trueTo display a banner, this setting must be enabled and then banner text must also be set.';
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
