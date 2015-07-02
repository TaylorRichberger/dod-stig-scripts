my $id = 'V-38494';
my $title = 'The system must prevent the root account from logging in from serial consoles.';
my $severity = 'low';
my $description = 'Preventing direct root login to serial port interfaces helps ensure accountability for actions taken on the systems using the root account.';
my $fix = 'To restrict root logins on serial ports, ensure lines of this form do not appear in "/etc/securetty": ttyS0ttyS1Note:  Serial port entries are not limited to those listed above.  Any lines starting with "ttyS" followed by numerals should be removed';
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
