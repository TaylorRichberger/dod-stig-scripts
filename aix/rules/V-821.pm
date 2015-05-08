my $id = 'V-821';
my $title = 'The inetd.conf file, xinetd.conf file, and the xinetd.d directory must be owned by root or bin.';
my $severity = 'medium';
my $description = 'Failure to give ownership of sensitive files or utilities to root provides the designated owner and unauthorized users with the potential to access sensitive information or change the system configuration which could weaken the system\'s security posture.';
my $fix = 'Change the ownership of the inetd.conf file to root or bin.  

Procedure:
# chown root /etc/inetd.conf';
my $autotest = 1;
my $autofix = 1;
my $filename = '/etc/inetd.conf';

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
    return STIG::OwnerShouldMatch($filename, qr/^(bin|root)$/);
}

sub fix()
{
    return `chown root $filename`;
}

1;
