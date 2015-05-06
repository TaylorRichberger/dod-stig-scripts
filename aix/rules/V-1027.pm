my $id = 'V-1027';
my $title = 'The /usr/lib/smb.conf file must be owned by root.';
my $severity = 'medium';
my $description = 'The /usr/lib/smb.conf file allows access to other machines on the network and grants permissions to certain users.  If it is owned by another user, the file may be maliciously modified and the Samba configuration could be compromised.';
my $fix = 'Change the ownership of the smb.conf file.

Procedure:
# chown root /usr/lib/smb.conf';
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
    return STIG::checkOwner($filename, 'root');
}

sub fix()
{
    return `chown root $filename`;
}

1;
