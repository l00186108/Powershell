# Assigning a value to the variable $day
$day = 4

# Using a switch statement to determine the day based on the value of $day
switch ($day) {
    0 { $result = 'Sunday' }
    1 { $result = 'Monday' }
    2 { $result = 'Tuesday' }
    3 { $result = 'Wednesday' }
    4 { $result = 'Thursday' }
    5 { $result = 'Friday' }
    6 { $result = 'Saturday' }
}

# Outputting the result
$result