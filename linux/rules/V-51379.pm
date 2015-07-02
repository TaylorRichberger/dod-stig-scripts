my $id = 'V-51379';
my $title = 'All device files must be monitored by the system Linux Security Module.';
my $severity = 'low';
my $description = 'If a device file carries the SELinux type "unlabeled_t", then SELinux cannot properly restrict access to the device file. ';
my $fix = 'Device files, which are used for communication with important system resources, should be labeled with proper SELinux types. If any device files carry the SELinux type "unlabeled_t", investigate the cause and correct the file\'s context. ';
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
