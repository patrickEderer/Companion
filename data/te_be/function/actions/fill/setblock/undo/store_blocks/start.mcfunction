execute store result storage te_be:undo temp.x double 1 run data get entity @s Pos[0] 1
execute store result storage te_be:undo temp.y double 1 run data get entity @s Pos[1] 1
execute store result storage te_be:undo temp.z double 1 run data get entity @s Pos[2] 1

scoreboard players set .undo_block_index temp 1
execute store result storage te_be:undo temp.current_block_index int 1 run scoreboard players get .undo_block_index temp

function te_be:actions/fill/setblock/undo/store_blocks/store with storage te_be:undo temp