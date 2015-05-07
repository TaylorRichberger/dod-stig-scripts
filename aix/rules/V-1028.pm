use Fcntl ':mode';

my $id = 'V-1028';
my $title = 'The /usr/lib/smb.conf file must have mode 0644 or less permissive.';
my $severity = 'medium';
my $description = 'If the smb.conf file has excessive permissions, the file may be maliciously modified and the Samba configuration could be compromised.';
my $fix = 'Change the mode of the smb.conf file to 0644 or less permissive.

Procedure:
# chmod 0644 /usr/lib/smb.conf';
my $autotest = 1;
my $autofix = 1;
my $filename = '/usr/lib/smb.conf';

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
    return STIG::ModeShouldNotExceed($filename, 0644);
}

sub fix()
{
    return `chmod 0644 $filename`;
}

1;
