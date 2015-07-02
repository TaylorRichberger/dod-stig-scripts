my $id = 'V-38472';
my $title = 'All system command files must be owned by root.';
my $severity = 'medium';
my $description = 'System binaries are executed by privileged users as well as system services, and restrictive permissions are necessary to ensure that their execution of these programs cannot be co-opted.';
my $fix = 'System executables are stored in the following directories by default: /bin/usr/bin/usr/local/bin/sbin/usr/sbin/usr/local/sbinIf any file [FILE] in these directories is found to be owned by a user other than root, correct its ownership with the following command: # chown root [FILE]';
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
