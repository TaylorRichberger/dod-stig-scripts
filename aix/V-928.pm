my $id = 'V-928';
my $title = 'The NFS export configuration file must be owned by root.';
my $severity = 'medium';
my $description = 'Failure to give ownership of the NFS export configuration file to root provides the designated owner and possible unauthorized users with the potential to change system configuration which could weaken the system\'s security posture.';
my $fix = 'Change the owner of the exports file to root.

Example:
# chown root /etc/exports';
my $autotest = 1;
my $autofix = 1;
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
    return STIG::OwnerShouldBe($filename, 'root');
}

sub fix()
{
    return `chown root $filename`;
}

1;
