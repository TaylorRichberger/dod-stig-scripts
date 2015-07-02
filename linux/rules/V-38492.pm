my $id = 'V-38492';
my $title = 'The system must prevent the root account from logging in from virtual consoles.';
my $severity = 'medium';
my $description = 'Preventing direct root login to virtual console devices helps ensure accountability for actions taken on the system using the root account. ';
my $fix = 'To restrict root logins through the (deprecated) virtual console devices, ensure lines of this form do not appear in "/etc/securetty": vc/1vc/2vc/3vc/4Note:  Virtual console entries are not limited to those listed above.  Any lines starting with "vc/" followed by numerals should be removed.';
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
