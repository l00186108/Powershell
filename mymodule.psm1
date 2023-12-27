# Define the path for the custom PowerShell module
$MyModulePath = "C:\Users\niall\OneDrive - Atlantic TU\Infrastructure as a code\Powershell\Modules\HelloWorld"

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