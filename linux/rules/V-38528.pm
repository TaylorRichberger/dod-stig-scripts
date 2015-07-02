my $id = 'V-38528';
my $title = 'The system must log Martian packets.';
my $severity = 'low';
my $description = 'The presence of "martian" packets (which have impossible addresses) as well as spoofed packets, source-routed packets, and redirects could be a sign of nefarious network activity. Logging these packets enables this activity to be detected.';
my $fix = 'To set the runtime status of the "net.ipv4.conf.all.log_martians" kernel parameter, run the following command: # sysctl -w net.ipv4.conf.all.log_martians=1If this is not the system\'s default value, add the following line to "/etc/sysctl.conf": net.ipv4.conf.all.log_martians = 1';
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
