my $id = 'V-38653';
my $title = 'The snmpd service must not use a default password.';
my $severity = 'high';
my $description = 'Presence of the default SNMP password enables querying of different system aspects and could result in unauthorized knowledge of the system.';
my $fix = 'Edit "/etc/snmp/snmpd.conf", remove default community string "public". Upon doing that, restart the SNMP service: # service snmpd restart';
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
