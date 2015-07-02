my $id = 'V-38599';
my $title = 'The FTPS/FTP service on the system must be configured with the Department of Defense (DoD) login banner.';
my $severity = 'medium';
my $description = 'This setting will cause the system greeting banner to be used for FTP connections as well.';
my $fix = 'Edit the vsftpd configuration file, which resides at "/etc/vsftpd/vsftpd.conf" by default. Add or correct the following configuration options. banner_file=/etc/issueRestart the vsftpd daemon.# service vsftpd restart';
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
