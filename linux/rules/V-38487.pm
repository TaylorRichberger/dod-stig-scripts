my $id = 'V-38487';
my $title = 'The system package management tool must cryptographically verify the authenticity of all software packages during installation.';
my $severity = 'low';
my $description = 'Ensuring all packages\' cryptographic signatures are valid prior to installation ensures the provenance of the software and protects against malicious tampering.';
my $fix = 'To ensure signature checking is not disabled for any repos, remove any lines from files in "/etc/yum.repos.d" of the form: gpgcheck=0';
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
