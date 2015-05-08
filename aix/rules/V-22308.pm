my $id = 'V-22308';
my $title = 'The system must restrict the ability to switch to the root user to members of a defined group.';
my $severity = 'low';
my $description = 'Configuring a supplemental group for users permitted to switch to the root user prevents unauthorized users from accessing the root account, even with knowledge of the root credentials.';
my $fix = 'Use the chsec command to only allow users in the adm group to su to root.
#chsec -f /etc/security/user -s root -a sugroups=adm';
my $autotest = 1;
my $autofix = 1;
my $filename = '/etc/security/user';

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
    return STIG::SecStanzaShouldNotEqual($filename, 'root', 'sugroups', '');
}

sub fix()
{
    return `chsec -f $filename -s root -a sugroups=adm`;
}

1;
