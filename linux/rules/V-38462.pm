my $id = 'V-38462';
my $title = 'The RPM package management tool must cryptographically verify the authenticity of all software packages during installation.';
my $severity = 'high';
my $description = 'Ensuring all packages\' cryptographic signatures are valid prior to installation ensures the provenance of the software and protects against malicious tampering.';
my $fix = 'Edit the RPM configuration files containing the "nosignature" option and remove the option.';
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
