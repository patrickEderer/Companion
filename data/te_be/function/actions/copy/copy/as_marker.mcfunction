execute store result score .temp_pos_x copy run data get entity @s Pos[0] 1
execute store result score .temp_pos_y copy run data get entity @s Pos[1] 1
execute store result score .temp_pos_z copy run data get entity @s Pos[2] 1


execute store result score .res_x copy run data get storage te_be:selection min_max.max_x
execute store result score .res_y copy run data get storage te_be:selection min_max.max_y
execute store result score .res_z copy run data get storage te_be:selection min_max.max_z

scoreboard players add .res_x copy 1
scoreboard players add .res_y copy 1
scoreboard players add .res_z copy 1

scoreboard players operation .res_x copy -= .temp_pos_x copy
scoreboard players operation .res_y copy -= .temp_pos_y copy
scoreboard players operation .res_z copy -= .temp_pos_z copy

execute if score .res_x copy matches 49.. run scoreboard players set .res_x copy 48
execute if score .res_y copy matches 49.. run scoreboard players set .res_y copy 48
execute if score .res_z copy matches 49.. run scoreboard players set .res_z copy 48


execute store result storage te_be:copy x double 1 run scoreboard players get .temp_pos_x copy
execute store result storage te_be:copy y double 1 run scoreboard players get .temp_pos_y copy
execute store result storage te_be:copy z double 1 run scoreboard players get .temp_pos_z copy

execute store result storage te_be:copy dx double 1 run scoreboard players get .res_x copy
execute store result storage te_be:copy dy double 1 run scoreboard players get .res_y copy
execute store result storage te_be:copy dz double 1 run scoreboard players get .res_z copy


scoreboard players add .copy_block_index copy 1
execute store result storage te_be:copy current_block_index int 1 run scoreboard players get .copy_block_index copy

function te_be:actions/copy/copy/store with storage te_be:copy