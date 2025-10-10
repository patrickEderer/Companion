#reset
scoreboard objectives remove difference_x
scoreboard objectives remove difference_y
scoreboard objectives remove difference_z

#init
scoreboard objectives add difference_x dummy
scoreboard objectives add difference_y dummy
scoreboard objectives add difference_z dummy

#store in score
execute store result score .end difference_x run data get storage te_be:selection end.x 1
execute store result score .end difference_y run data get storage te_be:selection end.y 1
execute store result score .end difference_z run data get storage te_be:selection end.z 1

execute store result score .start difference_x run data get storage te_be:selection start.x 1
execute store result score .start difference_y run data get storage te_be:selection start.y 1
execute store result score .start difference_z run data get storage te_be:selection start.z 1

#find min
execute if score .end difference_x < .start difference_x run scoreboard players operation .min difference_x = .end difference_x
execute unless score .end difference_x < .start difference_x run scoreboard players operation .min difference_x = .start difference_x

execute if score .end difference_y < .start difference_y run scoreboard players operation .min difference_y = .end difference_y
execute unless score .end difference_y < .start difference_y run scoreboard players operation .min difference_y = .start difference_y

execute if score .end difference_z < .start difference_z run scoreboard players operation .min difference_z = .end difference_z
execute unless score .end difference_z < .start difference_z run scoreboard players operation .min difference_z = .start difference_z

#find max
execute if score .end difference_x > .start difference_x run scoreboard players operation .max difference_x = .end difference_x
execute unless score .end difference_x > .start difference_x run scoreboard players operation .max difference_x = .start difference_x

execute if score .end difference_y > .start difference_y run scoreboard players operation .max difference_y = .end difference_y
execute unless score .end difference_y > .start difference_y run scoreboard players operation .max difference_y = .start difference_y

execute if score .end difference_z > .start difference_z run scoreboard players operation .max difference_z = .end difference_z
execute unless score .end difference_z > .start difference_z run scoreboard players operation .max difference_z = .start difference_z


#calc difference
scoreboard players operation .difference difference_x = .max difference_x
scoreboard players operation .difference difference_y = .max difference_y
scoreboard players operation .difference difference_z = .max difference_z

scoreboard players operation .difference difference_x -= .min difference_x
scoreboard players operation .difference difference_y -= .min difference_y
scoreboard players operation .difference difference_z -= .min difference_z

function math:structure/save_literal {"v":"1"}
scoreboard players operation .difference difference_x += .1 literal
scoreboard players operation .difference difference_y += .1 literal
scoreboard players operation .difference difference_z += .1 literal

#store
execute store result storage te_be:selection difference.x double 1 run scoreboard players get .difference difference_x
execute store result storage te_be:selection difference.y double 1 run scoreboard players get .difference difference_y
execute store result storage te_be:selection difference.z double 1 run scoreboard players get .difference difference_z

execute store result storage te_be:selection min_max.min_x double 1 run scoreboard players get .min difference_x
execute store result storage te_be:selection min_max.min_y double 1 run scoreboard players get .min difference_y
execute store result storage te_be:selection min_max.min_z double 1 run scoreboard players get .min difference_z

execute store result storage te_be:selection min_max.max_x double 1 run scoreboard players get .max difference_x
execute store result storage te_be:selection min_max.max_y double 1 run scoreboard players get .max difference_y
execute store result storage te_be:selection min_max.max_z double 1 run scoreboard players get .max difference_z


##half for offsetting
#store
execute store result storage te_be:selection difference.half_x double 0.5 run scoreboard players get .difference difference_x
execute store result storage te_be:selection difference.half_y double 0.5 run scoreboard players get .difference difference_y
execute store result storage te_be:selection difference.half_z double 0.5 run scoreboard players get .difference difference_z