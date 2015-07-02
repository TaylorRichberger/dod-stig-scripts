my $id = 'V-38597';
my $title = 'The system must limit the ability of processes to have simultaneous write and execute access to memory.';
my $severity = 'medium';
my $description = 'ExecShield uses the segmentation feature on all x86 systems to prevent execution in memory higher than a certain address. It writes an address as a limit in the code segment descriptor, to control where code can be executed, on a per-process basis. When the kernel places a process\'s memory regions such as the stack and heap higher than this address, the hardware prevents execution in that address range.';
my $fix = 'To set the runtime status of the "kernel.exec-shield" kernel parameter, run the following command: # sysctl -w kernel.exec-shield=1If this is not the system\'s default value, add the following line to "/etc/sysctl.conf": kernel.exec-shield = 1';
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
