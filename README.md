# Readme for PowerShell Exercises by Niall McCann

# Class Exercises
This repository covers Powershell Exercises as described in the Infrastructure as Code Module set out by our lecturer in Atlantic Techological University. This set of Exercises covers many different scripts from topics in building the fundamentals of Powershell. 
These weekly exercises cover much information with many examples from our lecturer to give us a better understanding of the fundamentals of Python Programming and to demonstrate specific tasks and functionality of Powershell scripts. Throughout our classes we covered 
a variety of different fundtions in Powershell, such as Loops, Conditional Branching and Remote Control. Below I will outline some of the main tasks undertaken to complete the scripts within this repository.

## Table of Contents

1. [Setting Execution Policy](#setting-execution-policy)
2. [Downloading and Installing PowerShell 7](#downloading-and-installing-powerShell-7)
3. [Custom PowerShell Module](#custom-powershell-module)
4. [Custom DHCP Server](#custom-dhcp-server)

## Setting the Execution Policy
Set the execution policy to RemoteSigned with Force flag to override restrictions. By default, Powershell will not allow a user tun scripts, even as an administrtaor on the device. After running this execution policy, powershell will allow the user to run scripts.
```powershell
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Force
```
## Downloading and Installing PowerShell 7
The following commands will download and install PowerShell 7. Micorsoft hvae this generic script they have made available to install PowerShell:

```powershell
# Download the PowerShell 7 installation script
Set-Location C:\PowerShell
$URI = "https://aka.ms/install-powershell.ps1"
Invoke-RestMethod -Uri $URI | Out-File -FilePath C:\PowerShell\Install-PowerShell.ps1

# Execute the installation script
C:\PowerShell\Install-PowerShell.ps1

```

## Custom PowerShell Module
Start by creating a custom module in PowerShell named 'HelloWorld' with a function:

```powershell
# Define the path for the custom PowerShell module
$MyModulePath = "C:\Path\To\Your\Module"

# Define the content of the custom PowerShell module
$MyModule = @"
# HelloWorld.PSM1
Function Get-HelloWorld {
    "Hello Beautiful World!!"
}
"@

# Create the directory for the custom module
New-Item -Path $MyModulePath -ItemType Directory -Force | Out-Null

# Save the custom module content to HelloWorld.PSM1
$MyModule | Out-File -FilePath $MyModulePath\HelloWorld.PSM1

# List the custom module as available
Get-Module -Name HelloWorld -ListAvailable

```

## Custom DHCP Server
This PowerShell module will create a DHCP server:

```powershell
Add-DhcpServerv4Scope -name "ISP" -StartRange 10.1.1.100 -EndRange 10.1.1.254 -SubnetMask 255.255.255.0 -State Active
Add-DhcpServerv4ExclusionRange -ScopeID 10.1.1.0 -StartRange 10.1.1.200 -EndRange 10.1.1.254
Set-DhcpServerv4OptionValue -OptionID 3 -Value 10.1.1.1 -ScopeID 10.1.1.0 -ComputerName dc1.ads.electric-petrol.ie

```
