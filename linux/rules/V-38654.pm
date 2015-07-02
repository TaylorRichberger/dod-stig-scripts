my $id = 'V-38654';
my $title = 'Remote file systems must be mounted with the nosuid option.';
my $severity = 'medium';
my $description = 'NFS mounts should not present suid binaries to users. Only vendor-supplied suid executables should be installed to their default location on the local filesystem.';
my $fix = 'Add the "nosuid" option to the fourth column of "/etc/fstab" for the line which controls mounting of any NFS mounts.';
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
