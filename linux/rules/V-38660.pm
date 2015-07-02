my $id = 'V-38660';
my $title = 'The snmpd service must use only SNMP protocol version 3 or newer.';
my $severity = 'medium';
my $description = 'Earlier versions of SNMP are considered insecure, as they potentially allow unauthorized access to detailed system management information.';
my $fix = 'Edit "/etc/snmp/snmpd.conf", removing any references to "v1", "v2c", or "com2sec". Upon doing that, restart the SNMP service: # service snmpd restart';
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
