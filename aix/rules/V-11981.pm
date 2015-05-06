my $id = 'V-11981';
my $title = 'All global initialization files must have mode 0644 or less permissive.';
my $severity = 'medium';
my $description = 'Global initialization files are used to configure the user\'s shell environment upon login.  Malicious modification of these files could compromise accounts upon logon.';
my $fix = 'Change the mode of the global initialization file(s) to 0444.
# chmod 0444 <global initialization file>';
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
    return STIG::checkMode($filename, 0755);
}

sub fix()
{
    return `chmod 0555 $filename`;
}

1;
