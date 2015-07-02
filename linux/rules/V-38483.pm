my $id = 'V-38483';
my $title = 'The system package management tool must cryptographically verify the authenticity of system software packages during installation.';
my $severity = 'medium';
my $description = 'Ensuring the validity of packages\' cryptographic signatures prior to installation ensures the provenance of the software and protects against malicious tampering.';
my $fix = 'The "gpgcheck" option should be used to ensure checking of an RPM package\'s signature always occurs prior to its installation. To configure yum to check package signatures before installing them, ensure the following line appears in "/etc/yum.conf" in the "[main]" section: gpgcheck=1';
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
