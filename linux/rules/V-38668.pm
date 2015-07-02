my $id = 'V-38668';
my $title = 'The x86 Ctrl-Alt-Delete key sequence must be disabled.';
my $severity = 'high';
my $description = 'A locally logged-in user who presses Ctrl-Alt-Delete, when at the console, can reboot the system. If accidentally pressed, as could happen in the case of mixed OS environment, this can create the risk of short-term loss of availability of systems due to unintentional reboot. In the GNOME graphical environment, risk of unintentional reboot from the Ctrl-Alt-Delete sequence is reduced because the user will be prompted before any action is taken.';
my $fix = 'Configure the system to log a message instead of rebooting the system by altering the "shutdown" line in "/etc/init/control-alt-delete.conf" to read as follows: exec /usr/bin/logger -p security.info "Ctrl-Alt-Delete pressed"';
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
