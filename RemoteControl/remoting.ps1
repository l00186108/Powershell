# Remote Server Connection Script

# Define the remote server's hostname or IP address
$REMOTE_SERVER = 'server-1'

# Connect to server-1 using Enter-PSSession
Enter-PSSession $REMOTE_SERVER

# Exit the PSSession when tasks are completed
Exit-PSSession