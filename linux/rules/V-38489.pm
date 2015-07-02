my $id = 'V-38489';
my $title = 'A file integrity tool must be installed.';
my $severity = 'medium';
my $description = 'The AIDE package must be installed if it is to be available for integrity checking.';
my $fix = 'Install the AIDE package with the command: # yum install aide';
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
