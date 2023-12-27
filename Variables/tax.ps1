# Variables for net value, VAT rate, VAT amount, and gross value
$NET = 111
$VAT = 0.23
$VATAMOUNT = $NET * $VAT
$GROSS = $NET + $VATAMOUNT

# Creating a text string with the calculated values
$text = "The total €$GROSS is the sum of the net value €$NET with the VAT amount €$VATAMOUNT at $($VAT * 100)% VAT rate"

# Outputting the constructed text
$text