particle composter ~ ~ ~ 0 0 0 0 1 force @s

#store pos
execute store result score .current difference_x run data get entity @e[type=marker,tag=te_marker_fill,limit=1,sort=nearest,distance=...5] Pos[0] 1
execute store result score .current difference_z run data get entity @e[type=marker,tag=te_marker_fill,limit=1,sort=nearest,distance=...5] Pos[2] 1


scoreboard players set .check temp 0

execute if score .min difference_x = .current difference_x run scoreboard players set .check temp 1
execute if score .min difference_z = .current difference_z run scoreboard players set .check temp 1

execute if score .max difference_x = .current difference_x run scoreboard players set .check temp 1
execute if score .max difference_z = .current difference_z run scoreboard players set .check temp 1

execute if score .check temp matches 0 run kill @e[type=marker,tag=te_marker_fill,limit=1,sort=nearest,distance=...5]