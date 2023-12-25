# Define parameters in a hashtable
$MYPARMS = @{
    UseMSI = $true
    Quiet = $true
    AddExplorerContextMenu = $true
    EnablePSRemoting = $true
}

# Execute the PowerShell 7 installation script with the specified parameters
C:\PowerShell\Install-PowerShell.ps1 @MYPARMS