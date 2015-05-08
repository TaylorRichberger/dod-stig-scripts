my $id = 'V-29520';
my $title = 'The /etc/ftpaccess.ctl file must be owned by root.';
my $severity = 'medium';
my $description = 'If the ftpaccess.ctl  file is not owned by root, an unauthorized user may modify the file to allow unauthorized access to change the file.   Unauthorized modification could result in Denial of Service to authorized FTP users or permit unauthorized access to system information.

';
my $fix = 'Change the owner of the ftpaccess.ctl file to root.

# chown root /etc/ftpaccess.ctl';
my $autotest = 1;
my $autofix = 1;
my $filename = '/etc/ftpaccess.ctl';

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
