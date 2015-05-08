my $id = 'V-22471';
my $title = 'The SSH public host key files must have mode 0644 or less permissive.';
my $severity = 'medium';
my $description = 'If a public host key file is modified by an unauthorized user, the SSH service may be compromised.';
my $fix = 'Change the permissions for the SSH public host key files.
# chmod 0644 /etc/ssh/*key.pub';
my $autotest = 1;
my $autofix = 1;
my $dir = '/etc/ssh';

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
    my $output = '';
    opendir(my $d, $dir);
    while (my $filename = readdir($d))
    {
        if ($filename =~ m/\.pub$/)
        {
            $output .= STIG::ModeShouldNotExceed($filename, 0644);
        }
    }
    return $output;
}

sub fix()
{
    return `chmod 0644 $dir/*.pub`;
}

1;
