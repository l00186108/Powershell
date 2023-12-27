$SERVERNAME = "dc1"
$FOREST = "ads.kmn.ie"
$DNSNAME = $SERVERNAME + "." + $FOREST

# Set the IP address for the DC
Rename-Computer -NewName $SERVERNAME
Get-NetIPAddress
New-NetIPAddress -InterfaceIndex 16 -IPAddress 172.27.6.11 -PrefixLength 24 -DefaultGateway 172.27.6.20
Restart-Computer

# Configure AD, DNS
Install-ADDSForest -DomainName $FOREST
Install-WindowsFeature DHCP -IncludeManagementTools

# Configure DHCP, add a single scope
Add-DhcpServerInDC -DnsName $DNSNAME -IPAddress 172.27.6.11
Add-DhcpServerv4Scope -Name InfraServers -StartRange 172.27.6.150 -EndRange 172.27.6.199 -SubnetMask 255.255.255.0

# Set time to sync'h with a local NTP server.
w32tm /config /manualpeerlist:172.27.15.254 /syncfromflags:manual /update