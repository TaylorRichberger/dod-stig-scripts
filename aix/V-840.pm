my $id = 'V-840';
my $title = 'The ftpusers file must exist.';
my $severity = 'medium';
my $description = 'The ftpusers file contains a list of accounts not allowed to use FTP to transfer files. If this file does not exist, then unauthorized accounts can utilize FTP.
';
my $fix = 'Create a /etc/ftpusers file containing a list of accounts not authorized for FTP.';
my $autotest = 1;
my $autofix = 0;
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
    return STIG::FileShouldExist($filename);
}

sub fix()
{
    return 0;
}

1;
