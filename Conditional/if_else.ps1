# Assigning values to variables
$Variable1 = 32
$Variable2 = 32

# Checking if the variables are not equal
if ($Variable1 -ne $Variable2) {
    Write-Output "The condition was true"
}

# Assigning a value to the variable $day
$day = 3

# Determining the day based on the value of $day
if ($day -eq 0) { $result = 'Sunday' }
elseif ($day -eq 1) { $result = 'Monday' }
elseif ($day -eq 2) { $result = 'Tuesday' }
elseif ($day -eq 3) { $result = 'Wednesday' }
elseif ($day -eq 4) { $result = 'Thursday' }
elseif ($day -eq 5) { $result = 'Friday' }
elseif ($day -eq 6) { $result = 'Saturday' }

# Outputting the result
$result

# Assigning a value to the variable $FINDVALUE
$FINDVALUE = '$SDDPT,2.98,,*66'

# Checking if $FINDVALUE starts with '$SD'
if ($FINDVALUE -like '$SD*') {
    Write-Output "Found a depth sounder"
}