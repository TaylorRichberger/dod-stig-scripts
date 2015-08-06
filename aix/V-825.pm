my $id = 'V-825';
my $title = 'Global initialization files must contain the mesg -n or mesg n commands.';
my $severity = 'low';
my $description = 'If the mesg -n or mesg n command is not placed into the system profile, messaging can be used to cause a Denial of Service attack.';
my $fix = 'Edit /etc/profile or another global initialization script and add the mesg -n command.';
my $autotest = 1;
my $autofix = 0;
my $filename = '/etc/profile';

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
    return STIG::FileShouldContain($filename, qr/mesg\s+-?n/);
}

sub fix()
{
    return 0;
}

1;
