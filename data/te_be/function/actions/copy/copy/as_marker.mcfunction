execute store result score .temp_pos_x copy run data get entity @s Pos[0] 1
execute store result score .temp_pos_y copy run data get entity @s Pos[1] 1
execute store result score .temp_pos_z copy run data get entity @s Pos[2] 1

scoreboard players operation .temp_pos_x copy -= .start_pos_x copy
scoreboard players operation .temp_pos_y copy -= .start_pos_y copy
scoreboard players operation .temp_pos_z copy -= .start_pos_z copy

execute store result storage te_be:copy temp.x double 1 run scoreboard players get .temp_pos_x copy
execute store result storage te_be:copy temp.y double 1 run scoreboard players get .temp_pos_y copy
execute store result storage te_be:copy temp.z double 1 run scoreboard players get .temp_pos_z copy

scoreboard players add .copy_block_index copy 1
execute store result storage te_be:copy temp.current_block_index int 1 run scoreboard players get .copy_block_index copy

data merge storage te_be:copy {temp:{block:"minecraft:test_block[mode=fail]"}}
function util:get_block {"storage":"te_be:copy temp.block"}
function te_be:actions/copy/copy/store with storage te_be:copy temp