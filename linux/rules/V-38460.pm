my $id = 'V-38460';
my $title = 'The NFS server must not have the all_squash option enabled.';
my $severity = 'low';
my $description = 'The "all_squash" option maps all client requests to a single anonymous uid/gid on the NFS server, negating the ability to track file access by user ID.';
my $fix = 'Remove any instances of the "all_squash" option from the file "/etc/exports".  Restart the NFS daemon for the changes to take effect.# service nfs restart';
my $autotest = 1;
my $autofix = 0;
my $filename = '/etc/exports';

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
    return STIG::FileShouldNotContain($filename, /all_squash/);
}

sub fix()
{
    return 0;
}
