# Initializing the variable $a
$a = 0 

# Using a do-while loop
do {
    # Outputting information about the current iteration
    "Starting Loop $a"
    $a

    # Incrementing the value of $a
    $a++

    # Outputting updated information about $a
    "Now `$a is $a"
} until ($a -ge 5)