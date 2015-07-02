my $id = 'V-38579';
my $title = 'The system boot loader configuration file(s) must be owned by root.';
my $severity = 'medium';
my $description = 'Only root should be able to modify important boot parameters.';
my $fix = 'The file "/etc/grub.conf" should be owned by the "root" user to prevent destruction or modification of the file. To properly set the owner of "/etc/grub.conf", run the command: # chown root /etc/grub.conf';
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
