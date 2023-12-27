# Find modules in the PowerShell Gallery with the 'PSEdition_Core' tag
$PGSM = Find-Module -Name * -Tag 'PSEdition_Core'

# Display the count of modules that support PowerShell Core
"There are {0:N0} Modules that support PowerShell Core" -f $PGSM.Count