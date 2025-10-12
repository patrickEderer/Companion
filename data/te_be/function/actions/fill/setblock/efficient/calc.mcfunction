execute store result score .current difference_x run data get entity @s Pos[0] 1
execute store result score .current difference_y run data get entity @s Pos[1] 1
execute store result score .current difference_z run data get entity @s Pos[2] 1

scoreboard players operation .difference difference_x = .max difference_x
scoreboard players operation .difference difference_y = .max difference_y
scoreboard players operation .difference difference_z = .max difference_z

scoreboard players operation .difference difference_x -= .current difference_x
scoreboard players operation .difference difference_y -= .current difference_y
scoreboard players operation .difference difference_z -= .current difference_z

execute if score .difference difference_x matches 32.. run scoreboard players set .difference difference_x 31
execute if score .difference difference_y matches 32.. run scoreboard players set .difference difference_y 31
execute if score .difference difference_z matches 32.. run scoreboard players set .difference difference_z 31

execute store result storage te_be:fill temp.difference_x double 1 run scoreboard players get .difference difference_x
execute store result storage te_be:fill temp.difference_y double 1 run scoreboard players get .difference difference_y
execute store result storage te_be:fill temp.difference_z double 1 run scoreboard players get .difference difference_z
$data merge storage te_be:fill {temp:{block:"$(block)"}}

function te_be:actions/fill/setblock/efficient/fill with storage te_be:fill temp