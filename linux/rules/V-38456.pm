my $id = 'V-38456';
my $title = 'The system must use a separate file system for /var.';
my $severity = 'low';
my $description = 'Ensuring that "/var" is mounted on its own partition enables the setting of more restrictive mount options. This helps protect system services such as daemons or other programs which use it. It is not uncommon for the "/var" directory to contain world-writable directories, installed by other software packages.';
my $fix = 'The "/var" directory is used by daemons and other system services to store frequently-changing data. Ensure that "/var" has its own partition or logical volume at installation time, or migrate it using LVM.';
my $autotest = 1;
my $autofix = 0;
my $fs = '/var';

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
    if (`mount` =~ m/on $fs/)
    {
        return '';
    } else
    {
        return "$fs doesn't have its own filesystem\n";
    }
}

sub fix()
{
    return 0;
}
