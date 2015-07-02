my $id = 'V-38449';
my $title = 'The /etc/gshadow file must have mode 0000.';
my $severity = 'medium';
my $description = 'The /etc/gshadow file contains group password hashes. Protection of this file is critical for system security.';
my $fix = 'To properly set the permissions of "/etc/gshadow", run the command: # chmod 0000 /etc/gshadow';
my $autotest = 1;
my $autofix = 1;
my $filename = '/etc/gshadow';
my $modestr = '0000';
my $mode = 0000;

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
    return STIG::ModeShouldNotExceed($filename, $mode);
}

sub fix()
{
    return `chmod $modestr $filename`;
}

1;
