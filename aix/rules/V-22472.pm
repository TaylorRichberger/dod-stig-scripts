my $id = 'V-22472';
my $title = 'The SSH private host key files must have mode 0600 or less permissive.';
my $severity = 'medium';
my $description = 'If an unauthorized user obtains the private SSH host key file, the host could be impersonated.';
my $fix = 'Change the permissions for the SSH private host key files.
# chmod 0600 /etc/ssh/*key';
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
        if ($filename =~ m/key$/)
        {
            $output .= STIG::ModeShouldNotExceed($filename, 0600);
        }
    }
    return $output;
}

sub fix()
{
    return `chmod 0600 $dir/*key`;
}

1;
