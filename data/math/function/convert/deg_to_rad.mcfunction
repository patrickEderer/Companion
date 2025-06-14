say DEPRECATED: MATH:DEG_TO_RAD

function math:structure/save_literal {"v":"1000"}

$say Converting $(deg) deg to rad
$scoreboard players set .temp temp $(deg)
scoreboard players operation .temp temp *= .1000 literal
function math:structure/save_literal {"v":"90"}
scoreboard players operation .temp temp /= .90 literal
execute store result storage math:results converted.deg_to_rad.rad float 0.001 run scoreboard players get .temp temp