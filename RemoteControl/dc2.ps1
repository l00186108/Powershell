$SERVERNAME = "dc2"
$FOREST = "ads.kmn.ie"
$DNSNAME = $SERVERNAME + "." + $FOREST

# Set the IP address for the DC
Rename-Computer -NewName $SERVERNAME
Get-NetIPAddress
New-NetIPAddress -InterfaceIndex 9 -IPAddress 172.27.6.12 -PrefixLength 24 -DefaultGateway 172.27.6.20
Set-DnsClientServerAddress -InterfaceIndex 9 -ServerAddresses 172.27.6.11
Restart-Computer

# Join the existing Domain
Add-Computer -DomainName $FOREST -Restart

# Install software
Install-WindowsFeature -Name AD-Domain-Services -IncludeManagementTools

# Add this as a second DC
Install-ADDSDomainController -DomainName $FOREST -InstallDns:$true -Credential (Get-Credential "janus\administrator")

# Configure DHCP
Install-WindowsFeature DHCP -IncludeManagementTools
Add-DhcpServerInDC -DnsName $DNSNAME -IPAddress 172.27.6.12