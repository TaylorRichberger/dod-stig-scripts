my $id = 'V-38596';
my $title = 'The system must implement virtual address space randomization.';
my $severity = 'medium';
my $description = 'Address space layout randomization (ASLR) makes it more difficult for an attacker to predict the location of attack code he or she has introduced into a process\'s address space during an attempt at exploitation. Additionally, ASLR also makes it more difficult for an attacker to know the location of existing code in order to repurpose it using return oriented programming (ROP) techniques.';
my $fix = 'To set the runtime status of the "kernel.randomize_va_space" kernel parameter, run the following command: # sysctl -w kernel.randomize_va_space=2If this is not the system\'s default value, add the following line to "/etc/sysctl.conf": kernel.randomize_va_space = 2';
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
