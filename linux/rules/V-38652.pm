my $id = 'V-38652';
my $title = 'Remote file systems must be mounted with the nodev option.';
my $severity = 'medium';
my $description = 'Legitimate device files should only exist in the /dev directory. NFS mounts should not present device files to users.';
my $fix = 'Add the "nodev" option to the fourth column of "/etc/fstab" for the line which controls mounting of any NFS mounts.';
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
