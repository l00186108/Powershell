# Install Windows Feature for Active Directory Domain Services
Install-WindowsFeature -name AD-Domain-Services –IncludeManagementTools

# Import the ADDSDeployment module
Import-Module ADDSDeployment

# Install Active Directory Domain Services
Install-ADDSForest `
    -CreateDnsDelegation:$false `
    -DatabasePath "C:\Windows\NTDS" `
    -DomainMode "WinThreshold" `
    -DomainName "ads.kmn.ie" `
    -DomainNetbiosName "ads" `
    -ForestMode "WinThreshold" `
    -InstallDns:$true `
    -LogPath "C:\Windows\NTDS" `
    -NoRebootOnCompletion:$false `
    -SysvolPath "C:\Windows\SYSVOL" `
    -Force:$true

# Restart the computer
Shutdown /r /t 0