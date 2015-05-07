my $id = 'V-11982';
my $title = 'All global initialization files must be owned by root.';
my $severity = 'medium';
my $description = 'Global initialization files are used to configure the user\'s shell environment upon login.  Malicious modification of these files could compromise accounts upon logon.  Failure to give ownership of sensitive files or utilities to root or bin provides the designated owner and unauthorized users with the potential to access sensitive information or change the system configuration which could weaken the system\'s security posture.';
my $fix = 'Change the ownership of global initialization files with incorrect ownership.

Procedure:
# chown bin <global initialization files>';
my $autotest = 1;
my $autofix = 1;
my $filename = '/etc/profile';

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
