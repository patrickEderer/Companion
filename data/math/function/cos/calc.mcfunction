# Calculates the sin of a number
# Params: <v> value -> the input number
#         <p> precision -> the number of decimal places to round to
# Returns: <number> The sine of the input number

$return run execute positioned 0.01 0.01 0.01 rotated $(v) 0 positioned ^ ^ ^1 run function math:cos/store_pos