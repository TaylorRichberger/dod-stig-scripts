my $id = 'V-38455';
my $title = 'The system must use a separate file system for /tmp.';
my $severity = 'low';
my $description = 'The "/tmp" partition is used as temporary storage by many programs. Placing "/tmp" in its own partition enables the setting of more restrictive mount options, which can help protect programs which use it.';
my $fix = 'The "/tmp" directory is a world-writable directory used for temporary file storage. Ensure it has its own partition or logical volume at installation time, or migrate it using LVM.';
my $autotest = 1;
my $autofix = 0;
my $fs = '/tmp';

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
