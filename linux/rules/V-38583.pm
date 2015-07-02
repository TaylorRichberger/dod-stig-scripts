my $id = 'V-38583';
my $title = 'The system boot loader configuration file(s) must have mode 0600 or less permissive.';
my $severity = 'medium';
my $description = 'Proper permissions ensure that only the root user can modify important boot parameters.';
my $fix = 'File permissions for "/etc/grub.conf" should be set to 600, which is the default. To properly set the permissions of "/etc/grub.conf", run the command: # chmod 600 /etc/grub.conf';
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
