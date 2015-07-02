my $id = 'V-38666';
my $title = 'The system must use and update an approved virus scan program.';
my $severity = 'high';
my $description = 'Virus scanning software can be used to detect if a system has been compromised by computer viruses, as well as to limit their spread to other systems.';
my $fix = 'Install virus scanning software, which uses signatures to search for the presence of viruses on the filesystem. The McAfee VirusScan Enterprise for Linux virus scanning tool is provided for DoD systems. OSSEC is provided for ARM UNIX systems to facilitate both FIM and Virus Scanning. Ensure virus definition files are no older than 7 days, or their last release.  Configure the virus scanning software to perform scans dynamically on all accessed files. If this is not possible, configure the system to scan all altered files on the system on a daily basis. If the system processes inbound SMTP mail, configure the virus scanner to scan all received mail. ';
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
