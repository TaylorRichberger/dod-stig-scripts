my $id = 'V-38443';
my $title = 'The /etc/gshadow file must be owned by root.';
my $severity = 'medium';
my $description = 'The "/etc/gshadow" file contains group password hashes. Protection of this file is critical for system security.';
my $fix = 'To properly set the owner of "/etc/gshadow", run the command: # chown root /etc/gshadow';
my $autotest = 1;
my $autofix = 1;
my $filename = '/etc/gshadow';

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
