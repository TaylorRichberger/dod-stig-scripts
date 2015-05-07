my $id = 'V-11988';
my $title = 'There must be no .rhosts, .shosts, hosts.equiv, or shosts.equiv files on the system.';
my $severity = 'high';
my $description = 'The .rhosts, .shosts, hosts.equiv, and shosts.equiv files are used to configure host-based authentication for individual users or the system.  Host-based authentication is not sufficient for preventing unauthorized access to the system.';
my $fix = 'Remove the .rhosts, .shosts, hosts.equiv, and/or shosts.equiv files.';
my $autotest = 1;
my $autofix = 1;

my @filenames = ('/etc/hosts.equiv', '/etc/shosts.equiv', '/etc/.rhosts', '/etc/.shosts');

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
    for my $filename (@filenames)
    {
        $output .= STIG::FileShouldNotExist($filename);
    }
    return $output;
}

sub fix()
{
    my $output = '';
    for my $filename (@filenames)
    {
        if (-e $filename)
        {
            $output .= `rm $filename`;
        }
    }
    return $output;
}

1;
