# Set the current location to 'C:\PowerShell'
Set-Location C:\PowerShell

# Define the URI for the PowerShell 7 installation script
$URI = "https://aka.ms/install-powershell.ps1"

# Download the script using Invoke-RestMethod and save it as 'Install-PowerShell.ps1'
Invoke-RestMethod -Uri $URI | 
Out-File -FilePath C:\PowerShell\Install-PowerShell.ps1