my $id = 'V-38491';
my $title = 'There must be no .rhosts or hosts.equiv files on the system.';
my $severity = 'high';
my $description = 'Trust files are convenient, but when used in conjunction with the R-services, they can allow unauthenticated access to a system.';
my $fix = 'The files "/etc/hosts.equiv" and "~/.rhosts" (in each user\'s home directory) list remote hosts and users that are trusted by the local system when using the rshd daemon. To remove these files, run the following command to delete them from any location. # rm /etc/hosts.equiv$ rm ~/.rhosts';
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
