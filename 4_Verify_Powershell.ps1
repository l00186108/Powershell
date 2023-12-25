# Set the execution policy to RemoteSigned with Force flag to override restrictions
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Force

# Initialize a counter variable
$I = 0

# Display the paths in the PSModulePath environment variable with an index
$env:PSModulePath -split ';' |
    ForEach-Object {"[{0:N0}] {1}" -f $I++, $_}