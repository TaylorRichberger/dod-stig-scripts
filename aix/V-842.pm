my $id = 'V-842';
my $title = 'The ftpusers file must be owned by root.';
my $severity = 'medium';
my $description = 'If the file ftpusers is not owned by root, an unauthorized user may modify the file to allow unauthorized accounts to use FTP.
';
my $fix = 'Change the owner of the ftpusers file to root.
# chown root /etc/ftpusers';
my $autotest = 1;
my $autofix = 1;
my $filename = '/etc/ftpusers';

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
