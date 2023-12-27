# Set the execution policy to RemoteSigned with Force flag to override restrictions
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Force

# Execute the PowerShell script '4_Verify_PowerShell7.ps1' by bypassing the execution policy
powershell.exe -executionpolicy bypass -File '.\4_Verify_PowerShell7.ps1'