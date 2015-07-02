my $id = 'V-38590';
my $title = 'The system must allow locking of the console screen in text mode.';
my $severity = 'low';
my $description = 'Installing "screen" ensures a console locking capability is available for users who may need to suspend console logins.';
my $fix = 'To enable console screen locking when in text mode, install the "screen" package: # yum install screenInstruct users to begin new terminal sessions with the following command: $ screenThe console can now be locked with the following key combination: ctrl+a x';
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
